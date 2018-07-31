{pkgs, ...}:

{
    boot.kernelPackages = pkgs.linuxPackages_4_15;
    boot.kernelParams = [
        "boot.shell_on_fail"
        "pcie_aspm=on"
    ];

    zramSwap.enable = true;
    boot.kernel.sysctl = {
        "vm.swappiness" = 30;
    };
    boot.crashDump.enable = true;
    boot.initrd.supportedFilesystems = [ "ext4" "zfs" ];
    boot.enableContainers = true;
    
}