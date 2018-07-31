{config, pkgs, lib, ...}:

{
    services.xserver = {
        enable = true;
        exportConfiguration = true;
    };

    environment.systemPackages = with pkgs; [
        xorg.xkill xorg.xev xorg.xdpyinfo xorg.xdm
        xorg.xset xorg.xmodmap glxinfo
    ];

    hardware.opengl = {
        enable = true;
        support32bit = true;
        driSupport32bit = true;
        s3tcSupport = true;
    };


}