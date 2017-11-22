let
  hostPkgs = import <nixpkgs> {};
  rippled_boost166_src = hostPkgs.fetchFromGitHub {
      owner = "seelabs";
      repo = "rippled";
      rev = "502cf54d13efb034b3b1cad37d63bd09f4105b8f";
      sha256 = "0xqcyi7zg8f8fr7d5yim3sayzmhhfj87w270a71zrhjxzh022bf0";
  };
in
  {
    rippled_boost166 = import "${rippled_boost166_src}/Builds/Nix/rippled_generic.nix" {
      shell = false;
      version = "0.90.0";
      src = rippled_boost166_src;
    };
  }
