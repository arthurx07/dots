### my dotfiles

### setup
```sh
git init --bare $HOME/src/dots
alias config='/usr/bin/git --git-dir=/home/kumao/src/dots --work-tree=/home/kumao'
config remote add origin git@github.com:arthurx07/dots.git
```

### replication
```sh
git clone --separate-git-dir=$HOME/src/dots https://github.com/arthrx07/dots.git dots-tmp
rsync --recursive --verbose --exclude '.git' dots-tmp/ $HOME/
rm --recursive dots-tmp
```

### configuration
```sh
config config status.showUntrackedFiles no
config remote set-url origin git@github.com:arthurx07/dots.git
```

### usage
```sh
config status
config status -u # to show untracked files
config add foo
config commit -m 'add foo'
config push -u origin main
```

*special mention to: https://news.ycombinator.com/item?id=11071754*
