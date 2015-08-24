# goenv
Shell script to set `GOPATH`.

This script starts in the current directory and looks backwards until it finds a directory named `/go` and sets `GOPATH` to that.  It also sets `PATH=$PATH:$GOPATH/bin`.  If you want to use this script, it's probably best NOT to set `GOPATH` in .bashrc, .profile, etc.

#usage

```
source goenv.sh
```

I also added an alias to `~/.bashrc`:

```
alias goenv="source /home/dgnorton/bin/goenv.sh"
```
