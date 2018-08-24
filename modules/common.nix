{config, pkgs, lib, ... }:

{
    
    environment.systemPackages = with pkgs; [
        man-pages
        posix_man_pages 
        atop 
        hdparm 
        sdparm 
        sysstat 
        whois
        htop 
        iftop 
        nload 
        pciutils 
        lsof 
        schedtool 
        nixops 
        dmidecode
        file 
        screen 
        byobu 
        tmux 
        units 
        progress 
        pv 
        parallel
        rsync 
        wget 
        nox 
        nix-repl
        zip 
        unzip 
        shared_mime_info 
        p7zip 
        fortune 
        unrar 
        gnupg
        psmisc 
        nmap
        gdb
        python3Packages.virtualenv
        telnet
        man-pages
        pythonFull
        python3Full
        freeipmi
        binutils
        jq
        gitAndTools.gitFull
        gitAndTools.git-annex
        sqliteInteractive
        parted
        nload
        iftop
        smartmontools
        pciutils
        lsof
        schedtool
        dmidecode
        iotop
        usbutils
        file
        moreutils
        vim
        finger_bsd
        units
        progress
        mc
        mkpasswd
        sshfsFuse
        nox
        nix-prefetch-git
        bsdgames
    ];

    boot.kernel.sysctl = {
        "fs.inotify.max_user_watches" = 1048576;
        "net.ipv4.tcp_congestion_control" = "bbr";
    };

    # SystemWide timezone
    time.timeZone = "UTC";
}
