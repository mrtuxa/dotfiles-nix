{ lib, config, ...}:

{
  # automatic screen rotation
  hardware.sensor.iio.enable = true;

  # Driver for the Stylus
  services.xserver.wacom.enable = lib.mkDefault config.services.xserver.enable;
}