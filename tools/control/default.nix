{ rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "control";
  version = "0.1";

  src = builtins.filterSource
    (path: type: type != "directory" || baseNameOf path == "src")
    ./.;

  cargoSha256 = "sha256-V6WfXGMm3dzSnd/O0SYu74SKrLMTh2nc/N0zaRb7VTw=";
}
