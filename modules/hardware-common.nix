{config, pkgs, lib, ...}:

{
    powerManagement.cpuFreqGovernor = mkDefault "ondemand";
    hardware.cpu.intel.updateMicrocode = true;
    hardware.cpu.amd.updateMicrocode = true;
    hardware.enableKSM = true;
    hardware.enableAllFirmware = true;
    hardware.mcelog.enable = true;
    hardware.usbWwan.enable = true;
    security.rngd.enable = true;
    services.tcsd.enable = true;
    time.hardwareClockInLocalTime = false;
    security.rtkit.enable = true;
    
}