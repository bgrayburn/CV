{ pkgs, ... }:

{

  # https://devenv.sh/packages/
  packages = with pkgs; [ pandoc texlive.combined.scheme-full ];

  # https://devenv.sh/scripts/
  scripts.convert.exec = "pandoc -o output/Rayburn_CV.pdf CV/Rayburn_CV.md";

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks.prettier.enable = true;

}
