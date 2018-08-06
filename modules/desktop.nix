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

    

}