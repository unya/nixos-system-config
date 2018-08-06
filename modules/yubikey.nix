{config, lib, pkgs, ...}:
with pkgs;
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
    services.pcscd.enable = true;
    services.udev.packages = [
        pkgs.libu2f-host
        pkgs.yubikey-personalization
        pkgs.libykneomgr
    ];
}
