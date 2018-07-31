{pkgs, ...}:

{
    boot.kernelPackages = pkgs.linuxPackages_4_17;
    boot.kernelParams = [
        "boot.shell_on_fail"
        "pcie_aspm=on"
    ];
    boot.extraModulePackages = [
        pkgs.linuxPackages.openafs
        pkgs.linuxPackages.perf
        pkgs.linuxPackages.ply
        pkgs.linuxPackages.systemtap
        pkgs.linuxPackages.bcc
    ];
    zramSwap.enable = true;
    boot.kernel.sysctl = {
        "vm.swappiness" = 30;
    };
    boot.crashDump.enable = true;
    boot.initrd.supportedFilesystems = [ "ext4" "zfs" ];
    boot.enableContainers = true;
    
}