## Usage
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


## Install history
```bash
sudo pacman -S acpi alacritty alsa-utils awesome bash-completion bluez bluez-utils brightnessctl cmatrix d-feet dmenu docker docker-compose feh flameshot gimp globalprotect-openconnect kitty less lua man-db mesa-utils ncdu btop htop neofetch neovim openssh firefox picom pulseaudio python-dbus-next python-iwlib python-neovim python-pip python-psutil qtile ranger pdfarranger ripgrep fd unzip git fzf cmake npm unzip rofi tldr tmux tree ttf-jetbrains-mono-nerd wget xclip xorg-xrandr  xwallpaper
yay -S onedrive-abraunegg # https://github.com/abraunegg/onedrive/blob/master/docs/INSTALL.md, https://abraunegg.github.io/
sudo pacman -S zathura zathura-pdf-mupdf # to view pdf with vim keybinds
xdg-mime default org.pwmt.zathura.desktop application/pdf ## set defualt application to open pdf
sudo pacman -S texlive-binextra # to have pdfcrop
```

## How to use onedrive:
```bash
onedrive --help
onedrive --synchronize
```

## /etc/systemd/logind.conf
```bash
HandlePowerKey=ignore
HandleLidSwitch=suspend
HandleLidSwitchExternalPower=ignore
IdleAction=suspend
IdleActionSec=5min
```


## Jetbrains nerd fonts install:
```bash
yay -S nerd-fonts-jetbrains-mono
```


## Basics
- Wifi:
```bash
iwctl
iwgtk
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
```
- Wallpaper:
```bash
xwallpaper --zoom ~/wallpapers/wallhaven-brz.jpg
```
- Screen brightenss
```bash
brightnessctl s 21%
```
- To make things pretty with picom
```bash
picom -b
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

