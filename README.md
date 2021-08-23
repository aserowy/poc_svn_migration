# POC for migration

## setup

- install nix pkg manager to use nix shell

## doing

- enter nix shell and call `run` followed by `setup`
- navigate into the svn server with

```sh
docker exec -it svn-server /bin/sh
```

- cd into `/home/svn`
- create a project with `svnadmin create test`
- leave the container
- enter nix shell and clone the repository with `gcl`
- `git fetch` if cloning hangs (exit with ctrl-c)
- push repo to remote

```sh
git remote add origin <repo url>
git push -u origin main
```

## further reads

- <https://gist.github.com/rickyah/7bc2de953ce42ba07116#cloning-the-svn-repository>
- <http://www.netinstructions.com/a-slow-migration-to-git-from-svn/>
