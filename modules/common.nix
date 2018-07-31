{config, pkgs, lib, ... }:

{
    nixpkgs.config = {
        allowUnfree = true;
        #allowBroken = true; Might be a bit too bold
    };
    
    environment.systemPackages = with pkgs; [
        man-pages posix_man_pages atop hdparm sdparm sysstat whois
        htop iftop nload pciutils lsof schedtool nixops dmidecode
        file screen byobu tmux units progress pv parallel
        rsync wget nox nix-repl
        zip unzip shared_mime_info p7zip fortune unrar gnupg
        psmisc 
    ];
}