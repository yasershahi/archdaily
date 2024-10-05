# Daily Driving Arch Linux
I am trying to use Arch Linux on my main machine for my day-to-day work.

## Goals
- Have a fast, reliable, and up-to-date PC to work with.
- Minimize the need for fixing issues with the OS.
- Stop distro-hopping for good (since 2010).


## Principles
- Keep the actual Arch installation as simple as possible.
- Use Flatpaks wherever possible.
- Use Distrobox for testing and compiling projects from GitHub or AUR.
- Use Docker (DDEV) to set up development environments.
- Update only on weekends.


## Before install

**Backup GNOME Settings**

```
dconf dump /org/gnome/ > desktop-config
```

**Backup App Data**

- Authenticator
- Newsflash
- EassyEffects Presets
- Errands
- Browser

**Backup System Data**

- Fonts
- Font Config
- SSH
- gitconfig
- bashrc





## Installation Process

I downloaded the latest Arch ISO and used Fedora Media Writer to create a bootable USB stick. After that, I booted from the USB.

Next, I connected my phone via a cable and enabled USB tethering. Arch Linux automatically detected the connection without any further configuration.

Before running `archinstall`, I made a couple of changes:

1. Added the nameservers `8.8.8.8` and `1.1.1.1` to `/etc/resolv.conf`.
2. Uncommented the parallel download option in `/etc/pacman.conf`.

I proceeded with a mostly default installation using `archinstall`, configuring the following:

- Set country mirrors to Finland, Sweden, and Denmark.
- Chose a Btrfs disk layout.
- Selected the Linux and Linux LTS kernels.
- Chose GNOME desktop as type of installation.

The installation was very quick, and I encountered no issues.

## Post-install
**Remove Stuff**
```
sudo pacman -Rs gnome-tour gnome-connections gnome-music simple-scan totem gnome-logs htop vim gnome-software epiphany
```

**Restore GNOME-specific Settings**

```
dconf load /org/gnome/ < desktop-config
```

```
gsettings set org.gnome.mutter center-new-windows true
```

### Install GNOME Extensions

- [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)
- [Hot Edge](https://extensions.gnome.org/extension/4222/hot-edge/)
- [Impatience](https://extensions.gnome.org/extension/277/impatience/)
- [Language Switch Button](https://extensions.gnome.org/extension/7102/language-switch-button/)
- [Tailscale QS](https://extensions.gnome.org/extension/6139/tailscale-qs/)
- [Tiling Assistant](https://extensions.gnome.org/extension/3733/tiling-assistant/)

### Apps & Packages

**Flatpaks** 
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
- [Apostrophe](https://flathub.org/apps/org.gnome.gitlab.somas.Apostrophe)
- [Boxes](https://flathub.org/apps/org.gnome.Boxes)
- [Web](https://flathub.org/apps/org.gnome.Epiphany)
- [Flatsweep](https://flathub.org/apps/io.github.giantpinkrobots.flatsweep)
- [Iconic](https://flathub.org/apps/nl.emphisia.icon)

**Packages from Arch Repos**

```
gnome-browser-connector gst-plugin-pipewire gst-plugins-good power-profiles-daemon switcheroo-control bash-completion git ntfs-3g mkcert tailscale gnome-tweaks distrobox bc ttf-jetbrains-mono ffmpegthumbnailer
```

**AUR**

- [ddev-bin](https://aur.archlinux.org/packages/ddev-bin)
- [brave-bin](https://aur.archlinux.org/packages/brave-bin)
- [mutter-performance](https://aur.archlinux.org/packages/mutter-performance)
- [adobe-base-14-fonts](https://aur.archlinux.org/packages/adobe-base-14-fonts)


**other**

- [spotdl](https://github.com/spotDL/spotify-downloader)
- [NVM](https://github.com/nvm-sh/nvm?tab=readme-ov-file)
- [Docker](https://wiki.archlinux.org/title/Docker)
- [PHPStorm](https://www.jetbrains.com/resources/eap/)
- [EnvyControl](https://github.com/bayasdev/envycontrol)

**Brave Theme & Extensions**

- [Bitwarden](https://chromewebstore.google.com/detail/bitwarden-password-manage/nngceckbapebfimnlniiiahkandclblb)
- [enhanced-h264ify](https://chromewebstore.google.com/detail/enhanced-h264ify/omkfmpieigblcllmkgbflkikinpkodlk)
- [floccus bookmarks sync](https://chromewebstore.google.com/detail/floccus-bookmarks-sync/fnaicdffflnofjppbagibeoednhnbjhg)
- [Open in WordPress playground](https://chromewebstore.google.com/detail/open-in-wordpress-playgro/khfpfafeepbfdhggfoalfmbhkmjkolmo)
- [uBlock Origin](https://ublockorigin.com/)
- [Wallabagger](https://chromewebstore.google.com/detail/wallabagger/gbmgphmejlcoihgedabhgjdkcahacjlj)
- [Head in the clouds](https://chromewebstore.google.com/detail/head-in-the-clouds/hfmcnpnageikmdhipbahnhdloljkcona)


## Maintenance
### Timeshift

### backing up

### Update Once Each Weekend
- Check the Arch Linux website to see if any manual intervention is needed.
- Perform a Timeshift backup.
- Backup Files to an external HDD.
- update the system with `sudo pacman -Syu` and reboot.
