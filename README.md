# POC for migration

## setup

- install nix pkg manager to use nix shell

## doing

- enter nix shell and call `run` followed by `setup` and `restart`
- checkout the svn repository with `scl`
- commit against svn

```sh
cd ./local/
touch ./test_rev.txt
svn add test_rev.txt
svn ci -m 'test revision'
cd ..
```

- check <http://localhost/svn/test> for test_rev.txt
- initialize the git repository with `gsi`
- fetch revisions with `gsf`
- commit against local git and push to svn

```sh
cd ./git/
touch ./test_git.txt
git add test_git.txt
git commit -m 'test git commit'
git svn dcommit --rmdir
cd ..
```
- check <http://localhost/svn/test> for test_git.txt
- change remote to final git repository and push changes

```sh
git remote add origin <repo url>
git push -u origin main
```

## further reads

- <https://gist.github.com/rickyah/7bc2de953ce42ba07116#cloning-the-svn-repository>
- <http://www.netinstructions.com/a-slow-migration-to-git-from-svn/>
