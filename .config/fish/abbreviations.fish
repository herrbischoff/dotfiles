# Neovim
abbr --add e 'nvim'
abbr --add vit 'nvim ~/.taskpaper/current.taskpaper'

# fish
abbr --add fconf 'nvim ~/.config/fish/config.fish'
abbr --add aconf 'nvim ~/.config/fish/abbreviations.fish; and for a in (abbr -l); abbr -e $a; end; and source ~/.config/fish/abbreviations.fish'

# General Shortcuts
abbr --add bc 'bc -l'
abbr --add c 'clear'
abbr --add dl 'cd ~/Downloads'
abbr --add dt 'cd ~/Desktop'
abbr --add f 'fossil'
abbr --add g 'git'
abbr --add mkdir 'mkdir -pv'
abbr --add sha1 'openssl sha1'
abbr --add x 'exit'

# Fossil shortcuts
abbr --add fst 'fossil status'
abbr --add fc 'fossil commit'

# Git shortcuts
abbr --add ga 'git add'
abbr --add gaa 'git add .'
abbr --add gb 'git branch'
abbr --add gba 'git branch -a'
abbr --add gbd 'git branch -D'
abbr --add gbl 'git branch | grep "*" | sed "s/* //"'
abbr --add gc 'git commit'
abbr --add gca 'git commit -a'
abbr --add gcm 'git commit --amend'
abbr --add gcd 'cd (git rev-parse --show-toplevel)'
abbr --add gco 'git checkout'
abbr --add gcob 'git checkout -b'
abbr --add gcod 'git checkout development'
abbr --add gcom 'git checkout master'
abbr --add gcp 'git cherry-pick'
abbr --add gcs 'git commit -sS'
abbr --add gd 'git diff'
abbr --add gfp 'git fetch --prune'
abbr --add gi 'git ignore'
abbr --add gl "git log --pretty='format:%C(Yellow)%h%Creset %C(Blue)%ar%Creset %an - %s' --graph"
abbr --add gm 'git merge --no-ff'
abbr --add gpoh 'git push origin HEAD'
abbr --add gpull 'git pull'
abbr --add gpush 'git push'
abbr --add grh 'git reset --hard'
abbr --add gst 'git status'
abbr --add gt 'git tag'
abbr --add gts 'git tag -s'
abbr --add lg 'lazygit'
abbr --add ts 'tig status'

# Repository Shortcuts
abbr --add updatespam 'cd ~/code/private/spam-corpus && git add . && git commit -a -m "Add messages" && git push'

# yadm shortcuts
abbr --add y 'yadm'
abbr --add ya 'yadm add'
abbr --add yc 'yadm commit'
abbr --add yca 'yadm commit -a'
abbr --add yd 'yadm diff'
abbr --add ypull 'yadm pull && yadm submodule update --init --recursive'
abbr --add ypush 'yadm push'
abbr --add yst 'yadm status'
abbr --add yup 'yadm pull && yadm submodule update --init --recursive && source ~/.config/fish/config.fish'

# npm shortcuts
abbr --add nls 'npm list --depth=0'

# fzf
abbr --add preview 'fzf --preview \'head -100 {}\''

# ZFS
abbr --add zfsls "zfs list -o name,used,avail,refer,mountpoint,compression,compressratio,dedup"

# IP addresses
abbr --add extip 'dig +short myip.opendns.com @resolver1.opendns.com'
abbr --add locip 'ipconfig getifaddr en0'

# View HTTP traffic
abbr --add sniff "sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"

# List file sizes in human-readable format
abbr --add sizes 'du -sh * | sort -n'

# Recursively delete `.DS_Store` files
abbr --add dsclean "find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
abbr --add show 'defaults write com.apple.finder AppleShowAllFiles -bool true; and killall Finder'
abbr --add hide 'defaults write com.apple.finder AppleShowAllFiles -bool false; and killall Finder'

# Hide/show all desktop icons (useful when presenting)
abbr --add hidedesktop 'defaults write com.apple.finder CreateDesktop -bool false; and killall Finder'
abbr --add showdesktop 'defaults write com.apple.finder CreateDesktop -bool true; and killall Finder'

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
abbr --add mergepdf '/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# USB Serial
abbr --add usbserial "screen /dev/tty.usbserial 115200"

# PF
abbr --add pf-log "multitail -cS pflog -l 'doas tcpdump -n -e -i pflog0'"
abbr --add pf-top "doas pftop -v rules"

# Nginx
abbr --add nginx-log "doas multitail --mergeall /var/log/nginx/*.access.log"

# Fail2Ban
abbr --add fail2ban-log "doas multitail /var/log/fail2ban.log"

# ArchiveBox
abbr --add aa "archivebox add"

# pass
abbr --add p "pass"
abbr --add pi "pass insert"
abbr --add pim "pass insert -m"
abbr --add pe "pass edit"
abbr --add pc "pass -c"
abbr --add pg "pass generate -cn"

# irssi
# abbr --add irssi "env TERM=screen-256color irssi"

# YouTube-DL
abbr --add yt "youtube-dl"

# Weather
abbr --add weather "curl wttr.in"
