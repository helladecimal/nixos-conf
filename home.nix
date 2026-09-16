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
	    nrs = "sudo nixos-rebuild --impure switch --flake /home/hecka/nix-conf/";
	    flake-upd = "sudo nix flake update";
	    vim = "nvim";

	    heckassh = "ssh hecka@heckadecimal";
	    wakemain = "heckassh wakemain; echo \"main pc on\"";
	};
    };

    services.flatpak.packages = [
        { appId = "org.vinegarhq.Sober"; origin = "flathub"; }	
    ];
}
