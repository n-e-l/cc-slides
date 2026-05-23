{
  description = "Marp slide deck dev shell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            marp-cli
            chromium      # needed for PDF export
            fontconfig    # font resolution
          ];

          # Point marp at nix-managed fonts
          FONTCONFIG_FILE = pkgs.makeFontsConf {
            fontDirectories = with pkgs; [
              noto-fonts
              noto-fonts-color-emoji
              # add more here, e.g. liberation_ttf, fira-code
            ];
          };

          shellHook = ''
            echo "marp $(marp --version)"
            echo "Usage:"
            echo "  marp slides.md           # → slides.html"
            echo "  marp slides.md --pdf     # → slides.pdf"
            echo "  marp slides.md --pptx    # → slides.pptx"
            echo "  marp -w slides.md        # watch mode"
          '';
        };
      });
}
