{ config, pkgs, ...}:

{
  # Default user settings for mrtuxa

  user.users.mrtuxa = {
    isNormalUser = true;
    description = "mrtuxa";
    extraGroups = [ "networkmanager" "audio" "video" "wheel"];
    packages = with pkgs; [
      chromiumDev
      neofetch
      spotify
      nerdfonts
      feh
      picom
      alacritty
      rofi
      pavuctonrol
      flameshot
      mpv
      element-desktop
      jetbrains.webstorm
      jetbrains.rider
      jetbrains.pycharm-professional
      jetbrains.php-storm
      jetbrains.idea-ultimate
      jetbrains.goland
      jetbrains.clion
    ];
  };
}