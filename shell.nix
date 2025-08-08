with import <nixpkgs> {};
mkShell {
  buildInputs = [
    hugo
  ];

  shellHook = ''
    echo "Hugo dev environment ready"
    echo "Run: hugo server -D"
  '';
}

