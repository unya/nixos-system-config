{config, lib, pkgs, ...}:
{
    boot.initrd.luks.yubikeySupport = true;
    environment.systemPackages = [
        yubico-piv-tool
        libyubikey
        libykneomgr
        yubikey-neo-manager
        yubikey-manager
        yubikey-personalization
    ];
    services.pcsd.enable = true;
    services.udev.packages = [
        pkgs.libu2f-host
        pkgs.yubikey-personalization
        pkgs.libykneomgr
    ]
}