{config, pkgs, lib, ...}:
{
    boot.extraModulePackages = [
        pkgs.linuxPackages.x86_perf_policy
        pkgs.linuxPackages.acpi_call
        pkgs.linuxPackages.tp_smapi
         pkgs.linuxPackages.cpupower
    ];

    services.thinkfan.enable = true;
    services.tlp.enable = true;
    environment.systemPackages = with pkgs; [tlp];
    services.tlp.extraConfig = ''
        TLP_ENABLE=1
        CPU_HWP_ON_AC=performance
        CPU_HWP_ON_BAT=power
        CPU_BOOST_ON_BAT=0
        SCHED_POWERSAVE_ON_BAT=1
        SCHED_POWERSAVE_ON_AC=0
        ENERGY_PERF_POLICY_ON_AC=performance
        ENERGY_PERF_POLICY_ON_BAT=powersave

        DISK_DEVICES="nvme0 sda"
        DISK_IOSCHED="noop cfq"
        SATA_LINKPWR_ON_AC=max_performance
        SATA_LINKPWR_ON_BAT=min_power
        PCIE_ASPM_ON_AC=performance
        PCIE_ASPM_ON_BAT=powersave
        WIFI_PWR_ON_AC=off
        WIFI_PWR_ON_BAT=on
        SOUND_POWER_SAVE_ON_AC=0
        SOUND_POWER_SAVE_ON_BAT=1
        
        RUNTIME_PM_ON_AC=on
        RUNTIME_PM_ON_BAT=auto

        USB_AUTOSUSPEND=1
        USB_BLACKLIST_PHONE=1
        USB_BLACKLIST_WWAN=1
        USB_AUTOSUSPEND_DISABLE_ON_SHUTDOWN=1


        START_CHARGE_THRESH_BAT0=50
        STOP_CHARGE_THRESH_BAT0=80
        START_CHARGE_THRESH_BAT1=50
        STOP_CHARGE_THRESH_BAT1=80
    '';
}