{config, pkgs, ... }:

{
    imports = [./classic-x11.nix];
    
    services.xserver.windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
    };

    hardware.pulseaudio = {
        enable = true;
        support32bit = true;
    };

    environment.systemPackages = with pkgs; [
        google-chrome pavucontrol mpv youtube-dl wine
        compton
    ];
}