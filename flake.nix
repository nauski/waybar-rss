{
  description = "Thing to fetch RSS feed";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:

    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in 
  {
    devShells.x86_64-linux.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
        python3
        python311Packages.pip
        python311Packages.feedparser
        ];
      };
  };
}
