#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check for GNOME Weather installation
if command_exists gnome-weather; then
    system=1
fi

if command_exists flatpak && flatpak list | grep -q org.gnome.Weather; then
    flatpak=1
fi

if [[ -z "$system" && -z "$flatpak" ]]; then
    echo "GNOME Weather isn't installed"
    exit 1
fi

# Get user input for location
if [[ -n "$*" ]]; then
    query="$*"
else
    read -p "Type the name of the location you want to add to GNOME Weather: " query
fi

# Sanitize user input for query
query=$(printf "%s" "$query" | sed 's/[^a-zA-Z0-9 ,.-]//g')
query="$(echo "$query" | sed 's/ /+/g')"

# Make the API request
request=$(curl -s "https://nominatim.openstreetmap.org/search?q=$query&format=json&limit=1")

# Check if the request returned a valid response
if [[ "$request" == "[]" ]]; then
    echo "No locations found, consider removing some search terms"
    exit 1
fi

# Extract the full address and city name
full_address=$(echo "$request" | jq -r '.[0].display_name')
city=$(echo "$request" | jq -r '.[0].address.city // .[0].address.town // .[0].address.village | split(",")[0]')

# If the city name is empty, use the display_name
if [[ -z "$city" ]]; then
    city=$(echo "$request" | jq -r '.[0].display_name | split(",")[0]')
fi

# Confirm with the user
read -p "If this is not the location you wanted, consider adding search terms. Are you sure you want to add $full_address? [y/n] : " answer

if [[ "$answer" != "y" ]]; then
    echo "Not adding location"
    exit 0
else
    echo "Adding location"
fi

# Extract latitude and longitude
lat=$(echo "$request" | jq -r '.[0].lat')
lon=$(echo "$request" | jq -r '.[0].lon')

# Convert latitude and longitude to radians
lat=$(echo "$lat / (180 / 3.141592654)" | bc -l)
lon=$(echo "$lon / (180 / 3.141592654)" | bc -l)

# Get existing locations
if [[ "$system" == 1 ]]; then
    locations=$(gsettings get org.gnome.Weather locations)
elif [[ "$flatpak" == 1 ]]; then
    locations=$(flatpak run --command=gsettings org.gnome.Weather get org.gnome.Weather locations)
fi

# Prepare the new location entry
location="<(uint32 2, <('$city', '', false, [($lat, $lon)], @a(dd) [])>)>"

# Update locations
if [[ "$system" == 1 ]]; then
    if [[ "$locations" != "@av []" ]]; then
        gsettings set org.gnome.Weather locations "$(echo "$locations" | sed "s|>]|>, $location]|")"
    else
        gsettings set org.gnome.Weather locations "[$location]"
    fi
elif [[ "$flatpak" == 1 ]]; then
    if [[ "$(flatpak run --command=gsettings org.gnome.Weather get org.gnome.Weather locations)" != "@av []" ]]; then
        flatpak run --command=gsettings org.gnome.Weather set org.gnome.Weather locations "$(echo "$locations" | sed "s|>]|>, $location]|")"
    else
        flatpak run --command=gsettings org.gnome.Weather set org.gnome.Weather locations "[$location]"
    fi
fi

echo "Location added successfully."
