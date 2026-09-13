{ config, pkgs, ... }:

{

    home.username = "hecka";
    home.homeDirectory = "/home/hecka";
    home.stateVersion = "26.05";

    programs.bat.enable = true;

    programs.bash = {
        enable = true;

	initExtra = "fastfetch";

	shellAliases = {
	    la = "ls -la";
	    ".." = "cd ..";
	    nrs = "sudo nix flake update; sudo nixos-rebuild switch";
	    vim = "nvim";

	    heckassh = "ssh hecka@heckadecimal";
	    wakemain = "heckassh wakemain; echo \"main pc on\"";
	};
    };

}
