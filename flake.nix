{
  description = "Simple Hangman.";

  inputs.nixpkgs.url = "nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in
        {
          devShell = pkgs.mkShell {
            buildInputs = with pkgs; [
              elmPackages.elm
              elmPackages.elm-language-server
              elmPackages.elm-format
              elmPackages.elm-test-rs
              elmPackages.elm-review
              elmPackages.elm-analyse
              nodejs
              elm2nix
              watch
              emacs
              tig
              gitui
            ];
          };
        }
      );
}
