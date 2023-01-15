{ config, pkgs, ...}:

{
   # Desktop
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.windowManager.bspwm.enable = true; 
}