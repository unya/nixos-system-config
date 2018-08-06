{nix, config, lib, pkgs, ...}:
{
    nix.buildCores = lib.mkDefault 0;
    nix.daemonIONiceLevel = 7;
    nix.daemonNiceLevel = 19;
    nix.extraOptions = "auto-optimise-store = true";
    nix.gc.automatic = true;
    nix.gc.dates = "Thu 03:15";
    nix.gc.options = "--delete-older-than 14d";
    nix.useSandbox = "relaxed";
    nixpkgs.config.allowUnfree = true;
}