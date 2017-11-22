{ stdenv, boost, version, rev, sha256, pkgs}:

with pkgs;

stdenv.mkDerivation rec {
  inherit version;
  name = "rippled-${version}";

  src = fetchFromGitHub {
    owner = "ripple";
    repo = "rippled";
    inherit rev sha256;
  };

  env = buildEnv { name = name; paths = buildInputs; };

  buildInputs = [
    cmake
    boost
    zlib
    openssl
    protobuf
  ];

  cmakeFlags = "-Dtarget=gcc.release.unity";

  installPhase = ''
    mkdir -p $out/bin
    find . -name rippled -type f -executable -exec cp {} $out/bin/ \;
  '';
}
