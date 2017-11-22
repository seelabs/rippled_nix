let
  boost_fun = import ./boost;
  packages = import ./packages;
  v1 = import ./v1.nix;
in
  {
    rippled_800 = v1 rec {
      stdenv = pkgs.overrideCC pkgs.stdenv pkgs.gcc7;
      boost = (boost_fun{inherit pkgs;}).boost_static;
      version = "0.80.0";
      rev = "cafe18c59279e7de447f25a0e00d0562d6441c7a";
      sha256 = "17ikdlwbs7cwhfcqv8726n1a1ns6pj0d31y8242sd794gb4p6hcv";
      pkgs = import packages.v1 {};
    };

    rippled_boost166 = v1 rec {
      stdenv = pkgs.overrideCC pkgs.stdenv pkgs.gcc7;
      boost = (boost_fun{inherit pkgs;}).boost_166rc2;
      version = "0.80.0";
      rev = "cafe18c59279e7de447f25a0e00d0562d6441c7a";
      sha256 = "17ikdlwbs7cwhfcqv8726n1a1ns6pj0d31y8242sd794gb4p6hcv";
      pkgs = import packages.v1 {};
    };
  }
