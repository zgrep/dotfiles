{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-20.03";
  outputs = { self, nixpkgs }: {
    nixosConfigurations.poincare = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix nixpkgs.nixosModules.notDetected ];
    };
  };
}