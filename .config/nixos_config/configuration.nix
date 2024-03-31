# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

# Commands to list and delete old profiles:
# sudo nix-env --list-generations --profile /nix/var/nix/profiles/system
# sudo nix-env --delete-generations old --profile /nix/var/nix/profiles/system
# Command to copy this configuration file to /home/yli/.config/nixos_config/ for version control
# cp /etc/nixos/configuration.nix /home/yli/.config/nixos_config/


{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
  networking.networkmanager.ensureProfiles.profiles = {
  # /etc/NetworkManager/system-connections/fly21.nmconnection
      "fly21" = {
          connection.id = "fly21";
          connection.type = "wifi";
          connection.interface-name = "wlp58s0";
          connection.permissions = "user:yli:;";

          wifi.ssid = "fly21";
          wifi.mode = "infrastructure";

          "wifi-security".key-mgmt = "wpa-psk";
          "wifi-security".auth-alg = "open";
          "wifi-security".psk = "Wodemima10180520";

          ipv4.method = "auto";
          ipv6.method = "auto";
          ipv6."addr-gen-mode" = "default";
      };
  };

  hardware.bluetooth.enable = true;

  virtualisation.docker.enable = true;


  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.windowManager.qtile.enable = true;
  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.yli = {
    isNormalUser = true;
    description = "yli";
    extraGroups = [ "networkmanager" "wheel" "docker"];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
    docker
    docker-compose
    alacritty
    (nerdfonts.override {fonts = ["FiraCode" "DroidSansMono" "JetBrainsMono"];})
    neovim
    codeium
    vim 
    nodejs
    fzf
    ripgrep
    fd
    picom
    rofi
    xwallpaper
    qtile
    neofetch
    uwufetch
    htop
    btop
    tree
    tree-sitter
    unzip
    curl
    wget
    git
    cmake
    ranger
    ncdu
    cmatrix
    lf
    zoxide
    tmux
    feh
    zathura
    xdotool
    brightnessctl
    flameshot
    brave
    firefox
    kate
    biber
    texliveFull
    cargo
    rustup
    rustc
    python311
    python311Packages.pip
    python311Packages.pynvim-pp
    shellharden
    libgcc
    gcc13
    xclip
    arandr
    bluetuith
    pstree
    go
    lua
    luajitPackages.luarocks-nix
    shell_gpt
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
