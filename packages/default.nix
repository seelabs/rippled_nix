let
  hostPkgs = import <nixpkgs> {};
in
  {
    v1 = (hostPkgs.fetchFromGitHub {
      owner = "NixOS";
      repo = "nixpkgs-channels";
      rev = "b8f7027360855faee9d72956092be2e030a12a5f";
      sha256 = "072mnrax658h8ppgbnvr9cwiydqyxijlaxnc0k45bicj7inqrqz1";
    });
  }
