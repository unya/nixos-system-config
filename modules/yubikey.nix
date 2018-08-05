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
    ]
}