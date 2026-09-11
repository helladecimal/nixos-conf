{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
  };

  outputs = { self, nixpkgs }: {
	nixosConfigurations.nixxy = nixpkgs.lib.nixosSystem {
		modules = [ ./configuration.nix ./home.nix ];
	};
  };
}
