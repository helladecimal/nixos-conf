{ config, pkgs, ... }:

{
    home.username = "hecka";
    home.homeDirectory = "/home/hecka";
    home.stateVersion = "26.05";

    programs.bash = {
        enable = true;
	shellAliases = {
	    wakemain = "heckassh wakemain";
	};
    };
}
