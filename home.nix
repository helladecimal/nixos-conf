{ config, pkgs, ... }:

{
    home.username = "hecka";
    home.homeDirectory = "/home/hecka";
    home.stateVersion = "26.05";

    programs.bash = {
        enable = true;

	initExtra = "fastfetch";

	shellAliases = {
	    wakemain = "heckassh wakemain; echo "main pc on";
	};
    };
}
