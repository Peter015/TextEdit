{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  name = "my-project";
  buildInputs = [ pkgs.sbcl pkgs.asdf ];
  src = ./.;
  phases = "installPhase";
  installPhase = ''
    sbcl --load textedit.asd
    sbcl --load textedit/tests.asd
  '';
  testPhase = ''
    sbcl --load textedit/tests.asd
    sbcl --eval '(asdf:test-system "textedit/tests")'
  '';
}