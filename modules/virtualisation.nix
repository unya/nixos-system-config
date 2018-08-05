{config, pkgs, lib, ...}:
{
    virtualisation.lxd.enable = true;
    virtualisation.docker.enable = true;
    virtualisation.docker.autoPrune.enabled = true;
    virtualisation.rkt.enable = true;

    networking.firewall.checkReversePath = false;
    environment.systemPackages = [
        pkgs.virtmanager
        pkgs.qemu
        pkgs.qemu-riscv
        pkgs.OVMF-CSM
    ];


}