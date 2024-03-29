# git-backup

In case of fire, use `git-backup` 🔥

> `git-backup` is literally like `git stash`, but **it makes stashes available** on the **remote** for later use!

## Installing

* [Arch Linux](https://aur.archlinux.org/packages/git-backup-git/):

```sh
yay -S git-backup-git
```

* From source:

```sh
git clone https://github.com/sarpik/git-backup.git
# or:  git clone git@github.com:sarpik/git-backup.git

cd git-backup

make install
```

## Usage

```sh
cd some-git-repo/
git-backup
```

and later, if you want to apply the backup:

```sh
cd some-git-repo/
git stash apply <branch-name>
```

For ease of use, you could create a git alias for `git-backup`:

```sh
git config --global alias.backup "!git-backup"
```

```sh
git config --global alias.bp     "!git-backup" # extra quick backups 💦💦
```

and then use it by just running `git backup`.

## Manual

See **git-backup**(1) (`man git-backup` or `git-backup -m`).

## License

[GPL-2.0](./LICENSE) - same as [git](https://github.com/git/git/blob/master/COPYING)
