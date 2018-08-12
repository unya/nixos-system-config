{config, lib, pkgs, ...}:
with pkgs;
{
    boot.initrd.luks.yubikeySupport = true;
    environment.systemPackages = [
	libykneomgr
	libyubikey
	yubioath-desktop
	yubico-piv-tool
	yubikey-manager
	yubikey-neo-manager
	yubikey-personalization
	yubikey-personalization-gui
	libu2f-host
    ];
    services.pcscd.enable = true;
    services.udev.packages = [
        pkgs.libu2f-host
        pkgs.yubikey-personalization
        pkgs.libykneomgr
    ];
}
