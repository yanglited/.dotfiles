## Usage
- [ ] Try make .config dir a softlink to this repos .config dir
```
Syncing dotfiles across multiple machines using Git is a common and efficient way to manage your configuration files. Here's a step-by-step guide to help you set up and use Git for syncing dotfiles on Linux:

### 1. **Initialize a Bare Git Repository:**

On one of your machines, you can create a bare Git repository to store your dotfiles. This repository will act as the central storage for your configuration files.

```bash
# Initialize a bare Git repository (replace ~/dotfiles.git with your desired location)
git init --bare $HOME/dotfiles.git
```

### 2. **Create an Alias for Dotfiles Management:**

Add the following alias to your shell configuration file (e.g., `.bashrc`, `.zshrc`) to simplify dotfiles management:

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME'
```

Then, reload your shell configuration or restart your terminal.

### 3. **Add Dotfiles to the Repository:**

Add your dotfiles to the bare repository using the `dotfiles` alias:

```bash
dotfiles add .bashrc .vimrc # Add other dotfiles as needed
dotfiles commit -m "Initial commit"
dotfiles push
```

### 4. **Clone Dotfiles on Other Machines:**

On each additional machine, clone the dotfiles repository:

```bash
git clone --bare <repository_url> $HOME/dotfiles.git
```

### 5. **Define the Alias:**

Add the same alias to your shell configuration on each machine:

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME'
```

### 6. **Checkout Dotfiles:**

Checkout the dotfiles on the new machine:

```bash
dotfiles checkout
```

If there are conflicts, Git will let you know. You can either remove or backup conflicting files before retrying the checkout.

### 7. **Update Dotfiles:**

You can update and synchronize dotfiles across machines by pulling from and pushing to the central repository:

```bash
dotfiles pull
dotfiles push
```

### Additional Tips:

- **Ignore Unwanted Files:**
  Create a `.gitignore` file in your dotfiles repository to exclude files that shouldn't be tracked (e.g., temporary files, caches).

- **Secure Sensitive Information:**
  If your dotfiles contain sensitive information, consider using a tool like `git-crypt` or storing sensitive information separately.

- **Branches for Different Machines:**
  You might create different branches for different machines or environments to manage machine-specific configurations.

This approach allows you to version control your dotfiles efficiently while easily syncing changes across multiple machines.
```

## Install history
```bash
sudo pacman -S \
acpi \
alacritty \
alsa-utils \
awesome \
bash-completion \
bluez \
bluez-utils \
brave \
brightnessctl \
cmatrix \
d-feet \
dmenu \
docker \
feh \
flameshot \
gimp \
globalprotect-openconnect \
kitty \
less \
lua \
man-db \
mesa-utils \
ncdu btop htop \
neofetch \
neovim \
nvim \
openssh firefox \
picom \
pip \
pulseaudio \
python-dbus-next \
python-iwlib \
python-neovim \
python-pip \
python-psutil \
qtile \
ranger pdfarranger \
ripgrep unzip git fzf cmake npm \
rofi \
tldr \
tmux \
tree \
ttf-jetbrains-mono-nerd \
wget \
xclip \
xorg-xrandr \
xrandr \
xwallpaper \
```
## /etc/systemd/logind.conf
```bash
HandlePowerKey=ignore
HandleLidSwitch=suspend
HandleLidSwitchExternalPower=ignore
IdleAction=suspend
```
