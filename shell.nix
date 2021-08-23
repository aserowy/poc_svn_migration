let
     pkgs = import (builtins.fetchGit {
         # Descriptive name to make the store path easier to identify                
         name = "my-old-revision";                                                 
         url = "https://github.com/NixOS/nixpkgs/";                       
         ref = "refs/heads/nixpkgs-unstable";                     
         rev = "81d4e65891f92e8e72c244da663c83c1e40dc919";                                           
     }) {};                                                                           
in pkgs.mkShell {
  name = "svn_migration";
  buildInputs = [
    pkgs.git
  ];
  shellHook = ''
  '';
}

