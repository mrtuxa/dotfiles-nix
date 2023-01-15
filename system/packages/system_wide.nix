{ config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    pciutils
    ffmpeg
    unzip
    htop
    maven
    gradle
    kotlin
    bat
  ];

  system.stateVersion = "unstable";
  
}