{ config, pkgs, ...}:

{
   # Setup keyfile
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  # Enable swap on luks
  boot.initrd.luks.devices."luks-3b96dfdb-a8dd-4bce-bb6b-865920373d44".device = "/dev/disk/by-uuid/3b96dfdb-a8dd-4bce-bb6b-865920373d44";
  boot.initrd.luks.devices."luks-3b96dfdb-a8dd-4bce-bb6b-865920373d44".keyFile = "/crypto_keyfile.bin";
}