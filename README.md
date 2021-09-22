# POC for migration

## setup

- install nix pkg manager to use nix shell
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

## prepare git

- initialize the git repository with `gsi`
- fetch revisions with `gsf`

## working with git

- commit against local git

```sh
cd ./git/
touch ./test_git.txt
git add test_git.txt
git commit -m 'test git commit'
```

> Just use your local git repository as a normal git repo, with the normal git commands
> 
> - git add FILE and git checkout -- FILE To stage/unstage a file
> - git commit To save your changes. Those commits will be local and will not be "pushed" to the SVN repo
> - git stash and git stash pop Hell yeah! Stashes are back!
> - git reset HEAD --hard Revert all your local changes
> - git log Access all the history in the repository
> - git rebase -i Yep, you can squash all the commits! (as usual be SUPER CAREFULL with this one)
> - git branch Yes! you can create local branches! But remember to keep the history linear!
>
> Credits to rickyah

## push to svn

- push changes from local git to svn
- check <http://localhost/svn/test> for test_git.txt

```
git svn dcommit --rmdir
cd ..
```

## push into new git repository

- change remote to final git repository and push changes

```sh
git remote add origin <repo url>
git push -u origin main
```

## further reads

- <https://gist.github.com/rickyah/7bc2de953ce42ba07116#cloning-the-svn-repository>
- <http://www.netinstructions.com/a-slow-migration-to-git-from-svn/>
