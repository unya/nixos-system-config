{nixos, pkgs, lib, ...}:

{
	hardware.sane.enable = true;
	hardware.sane.extraBackends = [pkgs.hplipWithPlugin ];
	environment.systemPackages = with pkgs; [
		xsane sane-frontends sane-backends
	];
}
