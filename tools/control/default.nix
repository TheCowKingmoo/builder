{ rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "control";
  version = "0.1";

  src = builtins.filterSource
    (path: type: type != "directory" || baseNameOf path == "src")
    ./.;

  cargoSha256 = "sha256-3q8il+C7fV4Ap8OyVUPdEVd+jAGN4opE3Xk4MaPgQFg=";
}
