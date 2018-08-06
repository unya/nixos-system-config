{config, pkgs, ... }:

{
    imports = [ ./hardware-configuration.nix 
                ./modules/zfs.nix
                ./modules/common.nix
                ./modules/hardware-common.nix
                ./modules/kernel.nix
                ./modules/users.nix
                ./modules/desktop.nix
                ./modules/audio.nix
                ./modules/nix-server.nix
                ./modules/virtualisation.nix
                ./modules/security.nix
                ./modules/network-common.nix
                ./modules/fprintd.nix ];
    networking.hostName = "lapis";
    boot.loader.efi.canTouchEfiVariables = true;

    boot.extraModulePackages = [
        pkgs.linuxPackages_4_17.tp_smapi
        pkgs.linuxPackages.exfat-nofuse
        pkgs.linuxPackages_4_17.vhba
        pkgs.linuxPackages_4_17.x86_energy_perf_policy
        pkgs.linuxPackages_4_17.acpi_call
        pkgs.linuxPackages_4_17.cpupower
    ];

    boot.kernelParams = [
        "boot.shell_on_fail"
    ];
    systemd.enableEmergencyMode = true;

    networking.hostId = "007f0101"; # Lapis' hostid

    boot.initrd.availableKernelModules = [
        "igb"
        "e1000e"
        "ushbid"
    ];

    services.udev.extraRules = ''
        ACTION=="add", SUBSYSTEM=="net", ATTR{address}=="00:28:f8:c0:66:c4", NAME="wifi0"
        ACTION=="add", SUBSYSTEM=="net", ATTR{address}=="54:e1:ad:11:86:05", NAME="wired0"
    ''

}

