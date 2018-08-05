{config, pkgs, lib, ...}:

{
    services.xserver = {
        enable = true;
        exportConfiguration = true;
        
    };

    environment.systemPackages = with pkgs; [
        xorg.xkill xorg.xev xorg.xdpyinfo xorg.xdm
        xorg.xset xorg.xmodmap glxinfo
        google-chrome pavucontrol mpv youtube-dl
        wine compton glxinfo xorg.xwd
    ];

    fonts = {
        enableDefaultFonts = true;
        enableFontDir = true;
        enableGhostscriptFonts = true;
        fonts = with pkgs; [
            corefonts
            inconsolata
            ubuntu_font_family
            unifont
            ipafont
            roboto
        ]
    }

    hardware.opengl = {
        enable = true;
        support32bit = true;
        driSupport32bit = true;
        s3tcSupport = true;
    };

}