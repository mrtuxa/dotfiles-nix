{ lib, config, ... }:

{
  services.xserver.wacom.enable = lib.mkDefault config.services.xserver.enable;
  hardware.sensor.iio.enable = true;
}
