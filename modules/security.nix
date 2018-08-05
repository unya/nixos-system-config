{nix, lib, pkgs, config, ...}:
{
    security.sudo.wheelNeedsPassword = false;
    services.openssh = {
        passwordAuthentication = true;
        challengeResponseAuthentication = true;
        forwardX11 = true;
        gatewayPorts = true;
    };
    services.rngd.enable = true;   
}