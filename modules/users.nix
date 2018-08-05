{config, pkgs, ... }:

{   
    programs.zsh.enable = true;
    users.extraUsers.pl = {
        isNormalUser = true;
        uid = 1000;
        extraGroups = [ "wheel" 
                        "docker"
                        "wireshark" 
                        "systemd-journal"
                        ];
        openssh.authoirized.keys = [
            "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEApaMWb6hxoHFQt+OpFX+sqlhNZex1H0tJkQ1gL0jH1dgSf7qezP52QhKy6ryFWa9J1MyxHxNJhqextES45lrs1PhdtO4UgA5rvC8/sZyW2yLZHVViygz5sgU7Z4ZRqyRHpl4y0yKdTDfBvTz0gpOcT/eTw98U9g8BvjQJIGOfdtrc7vtbEcy4qh+VxfPkBIDGXvZVX8kDkjAePrx7ASrysKYPzmTAcdPZTT0FbGS069MMZXkryFJ9CIJS191VXgVclYMvVq/jm0eiUkD7MA7E+98BxV/JxjLRjLhgVZnDZCJSVcJbgWzX1khADUPWrmyDV7f8v3LnIzDA1iVX3P3SAMAtHYIE41uYfUeYqGJI9UQwzYMKHleyTZGqFFDO4leMFG5gaXPO+OjWUmphC2FXTZWJ5IC2ZG+YWPC94cwOv4lNOTSoshpdDoEXw0uSGH1pIPo/x7oXfhQsm/UOhsEizQBHqY8q2h9M3NtfC560OL+i9uvvdK5cQzmag0rCohMs2G4oRYljQJsvg0gz3eAM3gUJan/KvVGYR2O3nUXCjBMIROkHG5qS3+FCeqdSkT9IyjTttoCQoNbMEYC/cpMxfd6Z/xWRSMF1+fAMYlq2WKQ55/c0cJIw5gyEF3u3iZf4c2ihiu5Jk9EjYm+/EafoH/f5Fb+AZlaJ4fsS8lLuxEU= pl@navi"
        ];
        shell = pkgs.zsh
    };

}