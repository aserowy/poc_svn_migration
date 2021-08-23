with import <nixpkgs> { };
mkShell rec {
  name = "svn_migration";
  buildInputs = [
    gitSVN
  ];
  shellHook = ''
    alias run="docker-compose up -d"
    alias setup="docker exec -t svn-server htpasswd -b /etc/subversion/passwd user user"
    alias gcl="git svn clone -s svn://localhost:3690/test git/"
  '';
}
