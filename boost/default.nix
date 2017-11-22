{ pkgs }:

  with pkgs;

  {
    boost_libcxx = boost.override { stdenv = llvmPackages_5.libcxxStdenv; };
    boost_static = boost.override { enableShared = false; };
    boost_166rc2 = callPackage <nixpkgs/pkgs/development/libraries/boost/generic.nix> {
      version = "1.66.0-rc2";
      enableShared = false;
      src = fetchurl {
        url = "https://dl.bintray.com/boostorg/beta/1.66.0.beta.1/source/boost_1_66_0_b1_rc2.tar.bz2";
        sha256 = "5d0405eb73bd609ebcd54bbc96d4f1e2d97c51b96c4703706695ddd94f942d6b";
      };
    };
  }
