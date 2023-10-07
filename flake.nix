{
  description = "My Home for NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-23.05";
    home-manager = {
      url = github:nix-community/home-manager/release-23.05;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager }:
    let 
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        ewan = lib.nixosSystem {
          inherit system;
          modules = [
            ./configuration.nix
            home-manager.nixosModules.home-manager {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.ewan = {
                imports = [ ./home.nix ];
              };
            }
          ];
        };
      };
      homeConfigurations.ewan = home-manager.lib.homeManagerConfiguration { 
        inherit system pkgs;
        homeDirectory = "/home/ewan";
        username = "ewan";
        stateVersion = "23.05";
        configuration = {
          imports = [
            ./home.nix
          ];
        };
      };
    };
}
