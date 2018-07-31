{config, pkgs, ... }:

{
    imports = [ ./hardware-configuration.nix 
                ./modules/zfs.nix
                ./modules/common.nix
                ./modules/hardware-common.nix
                ./modules/kernel.nix
                ./modules/users.nix
                ./modules/desktop.nix ];
    networking.hostname = "lapis";
    

}

