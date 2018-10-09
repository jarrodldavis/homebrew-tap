# homebrew-tap

Homebrew tap for my installable formulae.

## Installing

First, tap `jarrodldavis/tap` using Homebrew:

```sh
$ brew tap jarrodldavis/tap
==> Tapping jarrodldavis/tap
Cloning into '/usr/local/Homebrew/Library/Taps/jarrodldavis/homebrew-tap'...
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 4 (delta 0), reused 4 (delta 0), pack-reused 0
Unpacking objects: 100% (4/4), done.
Tapped 1 formula (28 files, 24.9KB).
```

Then, install any desired formula:

```sh
$ brew install gabo
==> Downloading https://github.com/jarrodldavis/gabo/archive/2.2.0.tar.gz
==> Downloading from https://codeload.github.com/jarrodldavis/gabo/tar.gz/2.2.0
######################################################################## 100.0%
==> Caveats
Bash completion has been installed to:
  /usr/local/etc/bash_completion.d

zsh completions have been installed to:
  /usr/local/share/zsh/site-functions
==> Summary
🍺  /usr/local/Cellar/gabo/2.2.0: 7 files, 12.9KB, built in 6 seconds
```
