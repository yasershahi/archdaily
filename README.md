# Daily Driving Arch Linux
I am trying to use Arch Linux on my main machine for my day-to-day work.

---
## Goals
- Have a fast, reliable, and up-to-date PC to work with.
- Minimize the need for fixing issues with the OS.
- Stop distro-hopping for good (since 2010).

---
## Prinsiples
- Keep the actual Arch installation as simple as possible.
- Use Flatpaks wherever possible.
- Use Distrobox for testing and compiling projects from GitHub or AUR.
- Use Docker (DDEV) to set up development environments.
- Update only on weekends.

---
## Pre-install
### What I have

### Apps
**Flatpak**
- [Authenticator](https://flathub.org/apps/com.belmoussaoui.Authenticator)
- [Gapless](https://flathub.org/apps/com.github.neithern.g4music)
- [Obsidian](https://flathub.org/apps/md.obsidian.Obsidian)
- [Newsflash](https://flathub.org/apps/io.gitlab.news_flash.NewsFlash)
- [Telegram](https://flathub.org/apps/org.telegram.desktop)
- [Mousai](https://flathub.org/apps/io.github.seadve.Mousai)
- [Parabolic](https://flathub.org/apps/org.nickvision.tubeconverter)
- [Motrix](https://flathub.org/apps/net.agalwood.Motrix)
- [Geary](https://flathub.org/apps/org.gnome.Geary)
- [Dialect](https://flathub.org/apps/app.drey.Dialect)
- [Video Trimmer](https://flathub.org/apps/org.gnome.gitlab.YaLTeR.VideoTrimmer)
- [Errands](https://flathub.org/apps/io.github.mrvladus.List)
- [Contrast](https://flathub.org/apps/org.gnome.design.Contrast)
- [Sly](https://flathub.org/apps/page.kramo.Sly)
- [Inkscape](https://flathub.org/apps/org.inkscape.Inkscape)
- [Tagger](https://flathub.org/apps/org.nickvision.tagger)
- [Decibels](https://flathub.org/apps/org.gnome.Decibels)
- [VLC](https://flathub.org/apps/org.videolan.VLC)
- [Tuba](https://flathub.org/apps/dev.geopjr.Tuba)
- [Easy Effects](https://flathub.org/apps/com.github.wwmm.easyeffects)
- [Postman](https://flathub.org/apps/com.getpostman.Postman)
- [Dconf Editor](https://flathub.org/apps/ca.desrt.dconf-editor)
- [Celluloid](https://flathub.org/apps/io.github.celluloid_player.Celluloid)
- [MongoDB Compass](https://flathub.org/apps/com.mongodb.Compass)
- [Metadata Cleaner](https://flathub.org/apps/fr.romainvigier.MetadataCleaner)
- [Decoder](https://flathub.org/apps/com.belmoussaoui.Decoder)
- [Kooha](https://flathub.org/apps/io.github.seadve.Kooha)
- [LocalSend](https://flathub.org/apps/org.localsend.localsend_app)
- [Ptyxis](https://flathub.org/apps/app.devsuite.Ptyxis)




**Apps from Arch Repos**
gnome-calendar gnome-calculator gnome-clocks gnome-contacts gnome-maps gnome-tweaks gnome-weather


**Packages from Arch Repos**
gnome-browser-connector gst-plugin-pipewire gst-plugins-good power-profiles-daemon switcheroo-control bash-completion git ntfs-3g mkcert tailscale

**AUR**
- [ddev-bin](https://aur.archlinux.org/packages/ddev-bin)
- [google-chrome-dev](https://aur.archlinux.org/packages/google-chrome-dev)
- [mutter-performance](https://aur.archlinux.org/packages/mutter-performance)

**other**
spotdl

### General config


---
## Install

---
## Post-install


---
## Maintenance
### Timeshift

### backing up

### Update Once Each Weekend
- Check the Arch Linux website to see if any manual intervention is needed.
- Perform a Timeshift backup.
- Backup Files to an external HDD.
- update the system with `sudo pacman -Syu` and reboot.
