{config, pkgs, ... }:

{
    imports = [
        ./classic-x11.nix
        ./audio.nix
        ./printing.nix
        
    ];
    
    services.xserver.windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
    };

    

    environment.systemPackages = with pkgs; [
        google-chrome pavucontrol mpv youtube-dl wine
        compton
    ];
}