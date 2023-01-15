{ config, pkgs, ...}:

{
  # Enable Bootloader (systemd-boot) and set to Efi
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";


 
}