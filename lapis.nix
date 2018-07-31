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
    

    boot.extraModulePackages = [
        pkgs.linuxPackages.tp_smapi
        pkgs.linuxPackages.vhba
        pkgs.linuxPackages.x86_perf_policy
        pkgs.linuxPackages.acpi_call
        pkgs.linuxPackages.cpupower
        pkgs.linuxPackages.exfat-nofuse
    ];

}

