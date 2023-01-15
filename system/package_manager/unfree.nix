{ config, pkgs, ...}:

{
  # Allow unfree
  nixpkgs.config.allowUnfree = true;
}