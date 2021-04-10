if not status --is-interactive

    exit 0

else

    # Disable annoying greeting message
    set fish_greeting ""

    # Set global OS variable so 'uname' only needs to be run once
    set -gx OS (uname)

    # Terminal colors
    set -gx TERM xterm-256color

    # Set language environment
    set -gx LANG en_US.UTF-8
    set -gx LANGUAGE en_US.UTF-8
    set -gx LC_ALL en_US.UTF-8
    set -gx LC_CTYPE en_US.UTF-8

    # Base aliases
    alias l "ls -lah"
    alias vi "nvim"
    alias vim "nvim"

    # Global paths
    set -gx PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin $HOME/bin $HOME/.local/bin $PATH
    set -gx MANPATH /usr/share/man /usr/local/man /usr/local/share/man $MANPATH
    if test -d $HOME/.local/share/man
        set -gx MANPATH $MANPATH $HOME/.local/share/man
    end

    # OS specific paths
    switch $OS
        case Darwin
            set -gx BROWSER $HOME/bin/safari
            set -g fish_user_paths /usr/local/sbin $fish_user_paths
            set -g fish_user_paths "/usr/local/opt/node@14/bin" $fish_user_paths
            set -g fish_user_paths (gem environment gemdir)/bin "/usr/local/opt/ruby/bin" $fish_user_paths

            # Homebrew
            set -gx HOMEBREW_NO_ANALYTICS 1
            set -gx HOMEBREW_NO_AUTO_UPDATE 1
            set -gx HOMEBREW_NO_GITHUB_API 1
            set -gx HOMEBREW_NO_INSECURE_REDIRECT 1
            #set -gx DYLD_FALLBACK_LIBRARY_PATH /usr/local/opt/openssl/lib $DYLD_FALLBACK_LIBRARY_PATH

            # pip
            if test -d $HOME/Library/Python/3.9/bin
                set -x PATH $PATH $HOME/Library/Python/3.9/bin
            end

            # pkgsrc
            if test -d /usr/local/pkg
                set -x PATH $PATH /usr/local/pkg/sbin /usr/local/pkg/bin
            end
        case FreeBSD
            set -gx BROWSER w3m
            # Life without color is depressing
            set -gx COLORTERM yes
            set -gx CLICOLOR yes
        case '*'
            set -gx BROWSER w3m
            # null
    end

    # Set preferred editors and pagers
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx PAGER less
    set -gx MANPAGER 'less -X'

    # Abbreviations
    source $HOME/.config/fish/abbreviations.fish

    # Colorscheme
    source $HOME/.config/fish/colorscheme.fish

    # fzf
    if test -d $HOME/.fzf/shell
        fzf_key_bindings
        set -x FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'
    end

    # Go
    if test -d $HOME/go
        set GOPATH $HOME/go
        set PATH $PATH $GOPATH/bin
    end

    # Node
    if command -q npm
        set -x NODE_PATH (npm root -g)
    end

    # pyenv
    if test -d $HOME/.pyenv
        set -x PYENV_ROOT $HOME/.pyenv
        set -x PATH $PYENV_ROOT/bin $PATH
        source (pyenv init -|psub) &> /dev/null
    end

    # Rust
    if test -d $HOME/.cargo
        set PATH $PATH $HOME/.cargo/bin
    end

    # Virtalenv
    set -gx VIRTUAL_ENV_DISABLE_PROMPT 1

    # Ansible
    # if test -d $HOME/.config/ansible
    #     set -x ANSIBLE_HOSTS $HOME/.config/ansible/hosts
    # end

    # Composer
    if test -d $HOME/.composer
        set PATH $PATH $HOME/.composer/vendor/bin
    end

    # kitty
    # if command -q kitty
    #     kitty + complete setup fish | source
    # end

    # luaenv
    # if test -d $HOME/.luaenv
    #     set -x PATH $PATH $HOME/.luaenv/bin
    #     source (luaenv init -|psub) &> /dev/null
    # end

    # Pear
    # if test -d $HOME/.pear/bin
    #     set -x PATH $PATH $HOME/.pear/bin
    # end

    # rvm
    # if test -d /usr/local/rvm/bin
    #     set -x PATH $PATH /usr/local/rvm/bin
    #     rvm default &> /dev/null
    # end
    #
    # if test -d $HOME/.rvm/bin
    #     set -x PATH $PATH $HOME/.rvm/bin
    #     rvm default &> /dev/null
    # end

    # swiftenv
    # if test -d $HOME/.swiftenv
    #     set SWIFTENV_ROOT $HOME/.swiftenv
    #     set PATH $SWIFTENV_ROOT/bin $PATH
    #     status --is-interactive; and source (swiftenv init -|psub) &> /dev/null
    # end

    # yarn
    # if test -d $HOME/.yarn/bin
    #     set -gx PATH $PATH $HOME/.yarn/bin $HOME/.config/yarn/global/node_modules/.bin
    # end

    # Starship
    if command -q starship
        starship init fish | source
    end

    # Enable vi keybindings
    fish_vi_key_bindings

end
