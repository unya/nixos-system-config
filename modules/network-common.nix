{pkgs, lib, ...}:

{
    networking.domain = "ruri-systems.net";
    networking.enableWLAN = true;
    networking.firewall.enable = false;
    networking.nftables.enable = true;
    networking.search = ["local" "ruri-systems.net"];
    networking.usePredictableInterfaceNames = false;
    networking.wireless.enable = true;
    networking.wireless.userControlled.enable = true;
    services.cachefilesd.enable = true;
    services.miredo.enable = true;
    services.avahi = {
        enable = true;
        ipv6 = true;
        ipv4 = true;
        publish = {
            addresses = true;
            domain = true;
            enable = true;
            hinfo = true;
            userServices = true;
            workstation = true;
        };
    };
}