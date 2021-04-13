scriptencoding utf-8

"  __       __ __           __
" |__.-----|__|  |_  .--.--|__.--------.
" |  |     |  |   _|_|  |  |  |        |
" |__|__|__|__|____|__\___/|__|__|__|__|
"
" Herr Bischoff's own Neovim configuration

set shell=/bin/sh

let g:loaded_python_provider = 1 " Disable Python 2 support
let g:loaded_ruby_provider = 1   " Disable Ruby support

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load configuration conditionally
call plug#begin()
    for g:rcfile in split(globpath('~/.config/nvim/plugins/tiny', '*.vim'), '\n')
        execute('source '.g:rcfile)
    endfor
    if !empty(glob('~/.config/nvim/small')) || !empty(glob('~/.config/nvim/full'))
        for g:rcfile in split(globpath('~/.config/nvim/plugins/small', '*.vim'), '\n')
            execute('source '.g:rcfile)
        endfor
    endif
    if !empty(glob('~/.config/nvim/full'))
        for g:rcfile in split(globpath('~/.config/nvim/plugins/full', '*.vim'), '\n')
            execute('source '.g:rcfile)
        endfor
    endif
call plug#end()

filetype plugin indent on " Enable filetype detection, allow indentation and syntax be set byt plugins
syntax enable             " Enable syntax processing

source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/autocommands.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/commands.vim

let g:plug_window = 'enew'

" Enable project-specific vimrc
" set exrc
" set secure

" Current project settings for Webpack aliases
" set includeexpr=substitute(substitute(v:fname,'^\\~\/','resources/assets/js/',''),'^\\~sass/\\(.*\\)/\\(.*\\)$','resources/assets/sass/\\1/_\\2','')
" set suffixesadd=.js,.vue,.scss

silent! so .vimlocal

" Overide italic comments
hi Comment gui=NONE
