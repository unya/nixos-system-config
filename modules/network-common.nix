{pkgs, lib, ...}:

{
    networking.domain = "ruri-systems.net";
    services.dnsmasq.enable = true;
    services.dnsmasq.servers = ["8.8.8.8" "8.8.4.4"];
    services.dnsmasq.resolveLocalQueries = true;
    services.dnsmasq.extraConfig = ''
server=/p4/192.168.7.113
server=/p4.int/192.168.7.113
'';
    networking.enableWLAN = true;
    networking.firewall.enable = false;
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