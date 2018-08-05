{config, pkgs, lib, ...}:

{
    services.xserver = {
        enable = true;
        exportConfiguration = true;
        useGlamor = true;

    };

    environment.systemPackages = with pkgs; [
        xorg.xkill xorg.xev xorg.xdpyinfo xorg.xdm
        xorg.xset xorg.xmodmap glxinfo
        google-chrome pavucontrol mpv youtube-dl
        wine compton xorg.xwd xorg.smproxy xorg.twm
        xorg.xbacklight xorg.xauth xorg.x11perf
        xorg.xdriinfo xorg.xinput xorg.xkbprint xorg.xkbutils
        xorg.xlsatoms xorg.xkbcomp xorg.xkbevd xorg.xlsclients
        xorg.xmag xorg.xmessage xorg.xorgdocs
        xorg.xprop xorg.xrandr xorg.xrdb xorg.xrefresh
        xorg.xsetroot xorg.xvinfo xorg.xwininfo xorg.xwud
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