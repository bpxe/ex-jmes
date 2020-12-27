{ 
  pkgs ? import <nixpkgs> {}
}:

pkgs.stdenv.mkDerivation rec {
  name = "bpxe-jmes-shell";

  buildInputs = with pkgs; [ elixir ];

  shellHook = ''
    export ERL_LIBS=
  '';

}


