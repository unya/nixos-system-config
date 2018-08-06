{config, lib, pkgs,nixos, ...}:
with pkgs;
{
    hardware.pulseaudio = {
        enable = true;
        support32Bit = true;
        zeroconf.discovery.enable = true;
        zeroconf.publish.enable = true;
        tcp.enable = true;
        
    };

    environment.systemPackages = [
        pamix pamixer paprefs pasystray
        pavucontrol ncpamixer
        pulseaudioFull
        pulsemixer
        pulseaudio-dlna
    ];
}