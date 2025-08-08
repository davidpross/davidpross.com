with import <nixpkgs> {};
mkShell {
  buildInputs = [
    hugo
    neovim
  ];

  shellHook = ''
    echo "Hugo + Neovim dev environment ready"
    echo "Run: hugo server -D"
  '';
}

