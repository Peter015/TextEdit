{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  name = "textedit";
  buildInputs = [ pkgs.gcc pkgs.sbcl ];
  src = ./src;
  phases = "installPhase";
  installPhase = ''
    mkdir -p $out/bin
    gcc src/textedit.c -o $out/bin/textedit
    cp src/textedit.lisp $out/bin/textedit.lisp
    sbcl --script $out/bin/textedit.lisp
  '';
}


