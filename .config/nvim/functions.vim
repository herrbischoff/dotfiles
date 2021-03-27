scriptencoding utf-8

"
"   ___                  __   __
" .'  _.--.--.-----.----|  |_|__.-----.-----.-----.
" |   _|  |  |     |  __|   _|  |  _  |     |__ --|
" |__| |_____|__|__|____|____|__|_____|__|__|_____|
"

" Make NERDCommenter switch different comment types in Vue components
" from https://github.com/posva/vim-vue/issues/17#issuecomment-261697765
" let g:ft = ''
" fu! NERDCommenter_before()
  " if &ft == 'vue'
    " let g:ft = 'vue'
    " let stack = synstack(line('.'), col('.'))
    " if len(stack) > 0
      " let syn = synIDattr((stack)[0], 'name')
      " if len(syn) > 0
        " let syn = tolower(syn)
        " exe 'setf '.syn
      " endif
    " endif
  " endif
" endfu
" fu! NERDCommenter_after()
  " if g:ft == 'vue'
    " setf vue
    " g:ft
  " endif
" endfu

" Fix Multiple Cursors and Neocomplete interaction
" function! Multiple_cursors_before()
"   if exists(':NeoCompleteLock')==2
"     exe 'NeoCompleteLock'
"   endif
" endfunction
"
" function! Multiple_cursors_after()
"   if exists(':NeoCompleteUnlock')==2
"     exe 'NeoCompleteUnlock'
"   endif
" endfunction
