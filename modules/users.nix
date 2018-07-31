{config, pkgs, ... }:

{
    users.extraUsers.pl = {
        isNormalUser = true;
        uid = 1000;
        extraGroups = [ "wheel" 
                        "docker"
                        "wireshark" ];
    }

}