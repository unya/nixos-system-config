{pkgs, ...}:

{
    boot.kernelPackages = pkgs.linuxPackages_4_17;
    boot.kernelParams = [
        "boot.shell_on_fail"
        "pcie_aspm=on"
    ];
    boot.extraModulePackages = [
        pkgs.linuxPackages_4_17.openafs
        pkgs.linuxPackages_4_17.ply
        pkgs.linuxPackages_4_17.systemtap
        pkgs.linuxPackages_4_17.bcc
    ];
    zramSwap.enable = true;
    boot.kernel.sysctl = {
        "vm.swappiness" = 30;
    };
    boot.crashDump.enable = true;
    boot.initrd.supportedFilesystems = [ "ext4" "zfs" ];
    boot.enableContainers = true;
    
}