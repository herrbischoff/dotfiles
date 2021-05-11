complete -xc s -n __fish_use_subcommand -a "(ls $HOME/s | grep -v '\.help')"

for folder in (find "$HOME/s" -type d -maxdepth 1 -mindepth 1 -print)
    set -l bn "(basename $folder)"
    complete -xc s -n "__fish_seen_subcommand_from $bn" -a "(ls $HOME/s/$bn | grep -v '\.help' )"
end

set -e bn
