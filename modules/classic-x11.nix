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
        # google-chrome
 pavucontrol mpv youtube-dl
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
        ];
    };

    hardware.opengl = {
        enable = true;
	extraPackages = with pkgs; [ vaapiIntel libvdpau-va-gl vaapiVdpau intel-ocl ];
	extraPackages32 = with pkgs; [ vaapiIntel libvdpau-va-gl vaapiVdpau intel-ocl ];
        driSupport32Bit = true;
        s3tcSupport = true;
    };

}