{config, pkgs, ...}:

{
    network.hostId = "";
    boot.supportedFilesystems = [ "zfs" ];
    services.zfs.autoSnapshot.enable = true;
    services.zfs.autoScrub = {
        enable = true;
        interval = "Sat *-*-* 04:00";
    };
}