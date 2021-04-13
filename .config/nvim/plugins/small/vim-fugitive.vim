Plug 'tpope/vim-fugitive'

nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gc :Gcommit %<CR>i
nnoremap <space>gst :Gstatus<CR>
nnoremap <space>gp :Gpush<CR>
vnoremap <space>gb :Gblame<CR>
