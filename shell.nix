with import <nixpkgs> { };
mkShell rec {
  name = "svn_migration";
  buildInputs = [
    gitSVN
    subversion
  ];
  shellHook = ''
    alias run="docker-compose up -d"
    alias setup="\
        docker exec -t svn-server htpasswd -b /etc/subversion/passwd user user && \
        docker exec -t svn-server svnadmin create /home/svn/test && \
        sudo cp ./svnserve.conf ./svn/test/conf/svnserve.conf"
    alias restart="docker-compose restart svn-server"

    alias scl="svn co svn://localhost:3690/test local/"

    alias gsi="git svn init svn://localhost:3690/test git/"
    alias gsf="git svn fetch"
  '';
}
