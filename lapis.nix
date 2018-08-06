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
                ./modules/fprintd.nix 
		./wireless.nix
	];
    networking.hostName = "lapis";
    boot.loader.efi.canTouchEfiVariables = true;
    boot.loader.systemd-boot.enable=true;
    boot.resumeDevice = "/dev/disk/by-uuid/83941a0d-cd18-491f-a5d6-6bf7f6911241";
    # LUKS
    boot.initrd.luks.devices.RPOOL = {
	allowDiscards = true;
        device =
"/dev/disk/by-id/nvme-Samsung_SSD_960_PRO_512GB_S3EWNWAJ401238M-part3";
	fallbackToPassword = true;
	preLVM = true;
    };
     boot.initrd.luks.devices.swap = {
	allowDiscards = true;
        device =
"/dev/disk/by-id/nvme-Samsung_SSD_960_PRO_512GB_S3EWNWAJ401238M-part2";
	fallbackToPassword = true;
    };

    swapDevices = [{
	device = "/dev/disk/by-uuid/83941a0d-cd18-491f-a5d6-6bf7f6911241";
	encrypted.blkDev = "/dev/disk/by-id/nvme-Samsung_SSD_960_PRO_512GB_S3EWNWAJ401238M-part2";
	encrypted.label = "swap";
    }];
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


    # Temporary desktop manager
    services.xserver.desktopManager.e19.enable=true;
    services.xserver.desktopManager.enlightenment.enable=true;
    services.xserver.desktopManager.kde5 = {
	enable = true;
	enableQt4Support = true;
    };
    services.xserver.displayManager.sddm.enable=true;
}

