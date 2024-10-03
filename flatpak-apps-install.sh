#!/bin/bash

# List of flatpak apps to be installed
flatpaks=(
    "com.belmoussaoui.Authenticator"
    "com.github.neithern.g4music"
    "md.obsidian.Obsidian"
    "io.gitlab.news_flash.NewsFlash"
    "org.telegram.desktop"
    "io.github.seadve.Mousai"
    "org.nickvision.tubeconverter"
    "net.agalwood.Motrix"
    "org.gnome.Geary"
    "app.drey.Dialect"
    "org.gnome.gitlab.YaLTeR.VideoTrimmer"
    "github.mrvladus.List"
    "org.gnome.design.Contrast"
    "page.kramo.Sly"
    "org.inkscape.Inkscape"
    "org.nickvision.tagger"
    "org.gnome.Decibels"
    "org.videolan.VLC"
    "flathub dev.geopjr.Tuba"
    "com.github.wwmm.easyeffects"
    "github.celluloid_player.Celluloid"
    "ca.desrt.dconf-editor"
    "flathub com.getpostman.Postman"
    "com.mongodb.Compass"
    "fr.romainvigier.MetadataCleaner"
    "com.belmoussaoui.Decoder"
    "flathub io.github.seadve.Kooha"
    "org.localsend.localsend_app"
    "app.devsuite.Ptyxis"
 )

# Loop through the array and install the flatpak apps
for app in "${flatpaks[@]}"; do
    echo "Installing $app..."
    flatpak install -y flathub "$app"
    echo "----------------------------------"
done

echo "Flatpak installation complete!"
