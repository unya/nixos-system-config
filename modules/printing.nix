{config, lib, pkgs,...}:
{
    services.printing.enabled;
    services.printing = {
        drivers = [
            pkgs.gutenprint
            pkgs.hplip
        ];
    };
}