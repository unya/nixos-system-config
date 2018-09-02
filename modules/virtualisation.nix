{config, pkgs, lib, ...}:
{
    imports = [ <unstable/nixos/modules/virtualisation/lxd.nix> ];
    disabledModules = ["virtualisation/lxd.nix"];
    virtualisation.lxd.enable = true;
    virtualisation.lxd.zfsSupport = true;
    virtualisation.docker.enable = true;
    virtualisation.docker.autoPrune.enable = true;
    virtualisation.rkt.enable = true;

    networking.firewall.checkReversePath = false;
    environment.systemPackages = [
        pkgs.virtmanager
        pkgs.qemu
        pkgs.qemu-riscv
        pkgs.OVMF-CSM
	(import <unstable> {}).lxd
    ];


}
