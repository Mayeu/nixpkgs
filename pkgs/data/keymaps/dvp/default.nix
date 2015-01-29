{ stdenv, kbd, fetchurl }:

stdenv.mkDerivation {
  name = "dvp-1.2.1";

  phases = ["installPhase"];

  src = fetchurl {
    url = "http://kaufmann.no/downloads/linux/dvp-1_2_1.map.gz";
    sha256 = "0e859211cfe16a18a3b9cbf2ca3e280a23a79b4e40b60d8d01d0fde7336b6d50";
  };
 
  installPhase = ''
    mkdir -p $out/share/keymaps/i386/dvorak/
    cp $src $out/share/keymaps/i386/dvorak/dvp.map.gz
  '';

  meta = {
    description = "Dvorak programmer keymap for your console";
    homepage = "http://www.kaufmann.no/roland/dvorak/";
  };
}
