{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
    home-manager.url = "github:nix-community/home-manager";

    fht-compositor = {
	url = "github:nferhat/fht-compositor";
	inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
	nixosConfigurations.nixxy = nixpkgs.lib.nixosSystem {
		system = "x86_64-linux";
		specialArgs = { inherit inputs; };
		modules = [ 
			./configuration.nix 
			home-manager.nixosModules.home-manager
			{
				home-manager.useUserPackages = true;
				home-manager.useGlobalPkgs = true;
			  	home-manager.backupFileExtension = "backup";
			 	home-manager.users.hecka = import ./home.nix;
			}
		];
	};
  };
}
