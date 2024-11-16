#!/bin/bash

# List of Flatpak apps to be installed
flatpaks=(
    "com.belmoussaoui.Authenticator"
    "md.obsidian.Obsidian"
    "io.gitlab.news_flash.NewsFlash"
    "org.telegram.desktop"
    "io.github.seadve.Mousai"
    "org.gnome.Geary"
    "org.gnome.gitlab.YaLTeR.VideoTrimmer"
    "org.gnome.design.Contrast"
    "org.inkscape.Inkscape"
    "org.nickvision.tagger"
    "org.gnome.Decibels"
    "org.videolan.VLC"
    "com.github.wwmm.easyeffects"
    "io.github.celluloid_player.Celluloid"
    "ca.desrt.dconf-editor"
    "com.getpostman.Postman"
    "com.mongodb.Compass"
    "fr.romainvigier.MetadataCleaner"
    "com.belmoussaoui.Decoder"
    "io.github.seadve.Kooha"
    "org.localsend.localsend_app"
    "app.devsuite.Ptyxis"
    "io.github.flattool.Warehouse"
    "org.gnome.Boxes"
    "org.gnome.gitlab.somas.Apostrophe"
    "nl.emphisia.icon"
    "org.qbittorrent.qBittorrent"
    "com.tomjwatson.Emote"
    "me.iepure.devtoolbox"
    "com.github.neithern.g4music"
    "com.spotify.Client"
    "org.remmina.Remmina"
    "de.philippun1.turtle"
)

# Function to install Flatpak apps
install_flatpak() {
    local app="$1"
    echo "Installing $app..."
    if flatpak install -y flathub "$app"; then
        echo "$app installed successfully."
    else
        echo "Failed to install $app." >&2
    fi
    echo "----------------------------------"
}

# Loop through the array and install the Flatpak apps
for app in "${flatpaks[@]}"; do
    install_flatpak "$app"
done

echo "Flatpak installation complete!"

