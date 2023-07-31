{
    description = "Maxfetch fr";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs }: 
    let
        system = "x86_64-linux";
        pkgs = nixpkgs.legacyPackages.${system};
        inherit (pkgs) stdenv;
    in
    {
        packages."x86_64-linux".default = stdenv.mkDerivation {
            name = "maxfetch";
            system = "x86_64-linux";
            src = ./.;
            buildPhase = ''
                mkdir -p $out/bin
                chmod +x maxfetch
                cp maxfetch $out/bin
            '';
        };
    };
}
