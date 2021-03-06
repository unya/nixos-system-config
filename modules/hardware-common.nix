{config, pkgs, lib, ...}:

{
    hardware.cpu.intel.updateMicrocode = true;
    hardware.cpu.amd.updateMicrocode = true;
    hardware.enableKSM = true;
    hardware.enableAllFirmware = true;
    hardware.mcelog.enable = true;
    hardware.usbWwan.enable = true;
    security.rngd.enable = true;
    time.hardwareClockInLocalTime = false;
    security.rtkit.enable = true;
    

    services.acpid = {
        enable = true;
        logEvents = true;
    };

    services.fwupd.enable = true;
    services.gpm.enable = true;
    services.hdapsd.enable = true;

    services.irqbalance.enable = true;
    services.journald.console = "/dev/tty11";


    services.thermald.enable = true;
    environment.systemPackages = with pkgs; [
	cpulimit cpufrequtils x86info
    ];
}
