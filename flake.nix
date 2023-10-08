{
  description = "Erisia pack-builder & server management tools";

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.callPackage ./default.nix {};
  };
}
