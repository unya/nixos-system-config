{pkgs, config, libi, pkgs, ...}:
with pkgs;
{
	environment.systemPackages = [
		pcscd
		tpmmanager
		tpm-quote-tools
		tpm-tools
		tpm-luks
		chaps
		simpleTpmPk11
		opensc
		pcsctools
		pcsclite
		ccid
		gpshell
		trousers
	];
	services.pcscd.enable = true;
	services.pcscd.plugins = [pkgs.ccid];
	services.tcsd.enable = true;
	
}
