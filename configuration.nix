{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
     ./thinkpad_yoga_l13_gen2a.nix
     ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices = {
    root = {
	device = "/dev/disk/by-uuid/8be61ad7-6d4f-4fdf-aea0-063d7d4b24ee";
	preLVM = true;
    };
  };

  networking.hostName = "nixos-mrtuxa"; # Define your hostname.
  # Pick only one of the below networking options.
  networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Select internationalistaion properties
  i18n.defaultLocale = "en_US.UTF-8";
  
  i18n.extraLocaleSettins = {
	LC_ADRESS = "en_US.UTF-8";
        LC_IDENTIFICATION = "en_US.UTF-8";
        LC_MEASUREMENT = "en_US.UTF-8";
	LC_MONETARY = "en_US.UTF-8";
	LC_NAME = "en_US.UTF-8";
	LC_NUMERIC = "en_US.UTF-8";
	LC_PAPER = "en_US.UTF-8";
	LC_TELEPHONE = "en_US.UTF-8";
	LC_TIME = "en_US.UTF-8";	  
  };
  
  # Desktop
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.windowManager.bspwm.enable = true;
  
  # Configure keymap in X11
  services.xserver = {
  	layout = "us";
  	xkbVariant = "";
  };
  
  
  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.mrtuxa = {
     isNormalUser = true;
     extraGroups = [ "wheel" "video" "audio" "disk" "networkmanager" ]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
	chromiumDev # Main Browser
	neofetch
	spotify
	nerdfonts
	pfetch
	feh
	picom
	polybar
	rofi
	pavucontrol
	flameshot
	mpv
	element-desktop
	jetbrains.webstorm
	jetbrains.rider
	jetbrains.pycharm-professional
	jetbrains.phpstorm
	jetbrains.idea-ultimate
	jetbrains.goland
	jetbrains.clion

     ];
   };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
     wget
     git
     pciutils
     ffmpeg
     unzip
     htop
     kotlin
     maven
     gradle
     bat
  ];
 
  # enable zsh
  program.zsh.enable = true;

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

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "unstable"; # Did you read the comment?
  
}

