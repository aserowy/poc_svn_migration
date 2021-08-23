with import <nixpkgs> { };
mkShell rec {
  name = "svn_migration";
  buildInputs = [
    gitSVN
  ];
  shellHook = ''
  '';
}
