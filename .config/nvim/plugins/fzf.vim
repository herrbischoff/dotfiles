Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

let $FZF_DEFAULT_COMMAND=
    \ 'fd --type f --hidden --follow
    \ --exclude .git
    \'
nnoremap <space>b :Buffers<CR>
nnoremap <space>f :Files<CR>
nnoremap π :Files<CR>
nnoremap <space>sn :Snippets<CR>
" nnoremap <space>ll :BLines<CR>

let g:fzf_layout = { 'down': '~40%' }
