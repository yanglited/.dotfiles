[##](##) Usage
For a new machine, go to home dir and do
```bash
git init
git config --global init.defaultBranch mainline
git branch -m mainline
git remote add origin git@github.com:yanglited/.dotfiles.git
git fetch
git checkout mainline
git log
git submodule update --init --recursive
```
## Reinstall another Archlinux machine
- Install
```bash
sudo pacman -S --needed - < pacman_explicit_install.txt
```
- To generate/update the above .txt file
```bash
!pacman -Qqe > pacman_explicit_install.txt
!pacman -Qqe >> pacman_explicit_install.txt # then in that file, :sort u to sort and remove duplicates
```
## Move some script files into /usr/local/bin
```bash
!sudo cp sf gwc /usr/local/bin/
```

## When download speed is slow for pacman or yay:
```bash
sudo pacman -S reflector
sudo reflector --verbose --latest 10 --sort rate --save /etc/pacman.d/mirrorlist
```

## Install history
```bash
sudo pacman -S docker docker-compose

sudo pacman -S acpi alacritty alsa-utils bash-completion bluez bluez-utils brightnessctl cmatrix d-feet dmenu docker docker-compose feh flameshot gimp  kitty less lua man-db mesa-utils ncdu btop htop neofetch neovim openssh firefox picom pulseaudio python-dbus-next python-iwlib python-neovim python-pip python-psutil qtile ranger pdfarranger ripgrep fd unzip git fzf cmake npm unzip rofi tldr tmux tree ttf-jetbrains-mono-nerd wget xclip xorg-xrandr  xwallpaper
yay -S onedrive-abraunegg # https://github.com/abraunegg/onedrive/blob/master/docs/INSTALL.md, https://abraunegg.github.io/

sudo pacman -S zathura zathura-pdf-mupdf # to view pdf with vim keybinds
!xdg-mime default org.pwmt.zathura.desktop application/pdf ## set defualt application to open pdf

!sudo pacman -S texlive-binextra texlive-latexextra texlive-bibtexextra biber xdotool

sudo pacman -S globalprotect-openconnect

sudo pacman -S nodejs npm cargo

sudo pacman -S lf zoxide fzf

# other
sudo pacman -S less xwallpaper xclip unzip python-neovim python-pip ripgrep fd fzf cmake tree-sitter brightnessctl bluez bluez-utils bash-completion ttf-jetbrains-mono-nerd picom xrandr arandr rofi
# below should be what i did for the archxps machine
sudo pacman -S ripgrep fd tree-sitter tree-sitter-cli\
 texlive-bibtexextra texlive-latexextra \
 zathura zathura-pdf-mupdf xdotool texlive-binextra biber texlive-xetex \
 tree-sitter nodejs npm brightnessctl fzf \
 perl perl-file-homedir perl-yaml-tiny perl-unicode-string perl-log-log4perl \
 texlive-mathscience texlive-fontsextra less

sudo pacman -S wl-clipboard # necessary on wayland to have the system clipboard copy working

sudo -S pacman -S tmux zellij

sudo -S pacman -S jp2a
!history
r!date
Sat Mar  2 08:10:42 AM EST 2024
!ls -alrht
```


## logind.conf
```bash
sudo vim /etc/systemd/logind.conf
HandlePowerKey=ignore
HandleLidSwitch=suspend
HandleLidSwitchExternalPower=ignore
IdleAction=suspend
IdleActionSec=5min
```

## Printers
localhost:631/admin

## Basics
- Wifi:
```bash
iwctl
iwgtk
sudo pacman -S network-manager-applet
nm-connection-editor # to edit a wifi with wpa2 enterprise security for example
nmcli device
nmcli connection show
```
- Chinese characters:
```bash
sudo pacman -S noto-fonts-cjk # verified
```
- Bluetooth:
```bash
bluetoothctl
bluetuith
```
- Audio:
```bash
alsamixer
```
- Displays:
```bash
arandr
xrandr --output DP-1 --mode 3440x1440 --rate 59.97
!xrandr --output DP-1 --mode 3840x2160 --rate 59.97
!xrandr --output eDP-1 --mode 1920x1200 --rate 59.97
!xrandr --output eDP-1 --mode 1920x1080 --rate 60

- sway:
```bash
sway output eDP-1 2560x1440@60 scale 1.50
```


```
- Wallpaper:
```bash
!xwallpaper --zoom ~/wallpapers/wallhaven-brz.jpg
!xwallpaper --zoom ~/wallpapers/bogdan-l-1.jpg
!xwallpaper --zoom ~/wallpapers/hm3lf5jf.jpg
!xwallpaper --zoom ~/wallpapers/wallhaven-purple-mountain.jpg
!xwallpaper --zoom ~/wallpapers/wallhaven-porche.jpg
!xwallpaper --zoom ~/wallpapers/wallhaven-porche-2.jpg
```
- Screen brightenss
```bash
! brightnessctl s 93%
! brightnessctl s 73%
```
- To make things pretty with picom
```bash
!picom -b
```
- Onedrive:
```bash
onedrive --help
onedrive --synchronize
alias onedrive_upload='onedrive --synchronize --upload-only --force'
```
- To print
```bash
sudo pacman -S cups cups-pdf
sudo systemctl enable cups.service
sudo systemctl enable cups.socket
sudo systemctl start cups.service
# Open below link in a browser
localhost:631
```
- VPN for Alert/Walmart
```bash
gpclient
```
- Set up git
```bash
git config --global core.pager less
```
