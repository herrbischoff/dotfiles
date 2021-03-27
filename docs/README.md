# Herr Bischoff's Dotfiles

I'm a bit obsessive about my dotfiles and have gathered the most important 
pieces here. This MKII of them, with a vastly reduced scope and cruft of five 
years of constant twiddling cleaned up.

This repository is managed by [yadm](https://github.com/TheLocehiliosan/yadm).

Obviously, you're not going to just dump the bulk of my dotfiles to your local 
system in one go. Feel free to peruse the repository and take what you need. I 
always love to see what other people have in their configurations and let me be 
inspired.

## Requirements

- Bash >= 5.x
- Git >= 2.x
- fish >= 2.5.x

## Install

### macOS
```fish
brew install yadm
yadm clone https://github.com/herrbischoff/dotpr0n.git
yadm submodule update --init --recursive
source ~/.config/fish/config.fish
```

### FreeBSD
```fish
pkg install yadm
yadm clone https://github.com/herrbischoff/dotpr0n.git
yadm submodule update --init --recursive
source ~/.config/fish/config.fish
```

### OpenBSD and others
```fish
mkdir -p ~/bin ~/.local/share/man/man1
curl -fLo ~/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm
curl -fLo ~/.local/share/man/man1/yadm.1 https://github.com/TheLocehiliosan/yadm/raw/master/yadm.1
chmod a+x ~/bin/yadm
~/bin/yadm clone https://github.com/herrbischoff/dotpr0n.git
~/bin/yadm submodule update --init --recursive
source ~/.config/fish/config.fish
```
