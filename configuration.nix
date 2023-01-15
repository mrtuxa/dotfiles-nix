{ config, pkgs, ...}:

{ 
  imports = 
  [
    ./hardware/thinkpad/l13_gen2a.nix
    ./system/bootloader/bootloader.nix
    ./system/desktop/desktop.nix
    ./system/i18n/i18n.nix
    ./system/luks/luks.nix
    ./system/networking/network.nix
    ./system/package_manager/unfree.nix
    ./system/packages/system_wide.nix
    ./system/shell/zsh.nix
    ./system/time/time.nix
    ./system/user/mrtuxa.nix
    ./system/x11/xserver.nix
  ];
}
