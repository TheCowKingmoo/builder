with import ./nixpkgs {};
with stdenv;

with callPackage ./lib/lib.nix {};

let resources_12 = runLocally "resources-1.12" {
    } ''
      mkdir -p $out/resourcepacks $out/shaderpacks
      #ln -s $seus $out/shaderpacks/SEUS-v11.0.zip
      #ln -s $faithful $out/resourcepacks/F32-1.10.2.zip
      #ln -s $sphax $out/resourcepacks/Sphax.zip
    '';
   resources_10 = runLocally "resources-1.10" {
   } ''
     mkdir -p $out/resourcepacks
     #ln -s $ozocraft $out/resourcepacks/OzoCraft.zip
   '';
   resources_7 = runLocally "resources-1.7" {
   } ''
     mkdir -p $out/resourcepacks
     #ln -s $erisia $out/resourcepacks/erisia-pack.zip
   '';
   sprocket = callPackage ./lib/sprocket {};
in

rec {

  packs = {
    e26 = buildPack e26;
  };

  e26 = {
    name = "MakersComplex";
    tmuxName = "e26";
    description = "e26: Maker's Complex";
    ram = "12000m";
    port = 25565;
    prometheusPort = 1223;
    forge = {
      major = "1.15.2";
      minor = "31.2.31";
    };
    extraDirs = [
      ./base/erisia
      ./base/e26
      ./base/foundry
    ];
    extraServerDirs = [
      ./base/server
    ];
    extraClientDirs = [
      ./base/client
    ];
    manifests = [
      ./manifest/e26.nix
    ];
    blacklist = [
    ];
  };

  ServerPack = buildServerPack rec {
    inherit packs;
    hostname = "madoka.brage.info";
    urlBase = "https://madoka.brage.info/pack/";
  };

  # To use:
  # (nix build -f . ServerPackLocal && cd result && python -m SimpleHTTPServer)
  ServerPackLocal = buildServerPack rec {
    inherit packs;
    hostname = "localhost:8000";
    urlBase = "http://" + hostname + "/";
  };

  web = callPackage ./web {};
}
