" Plugin
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Settings
let g:airline_powerline_fonts = 1
" let g:airline_theme='oceanicnext'
" let g:airline_theme='gruvbox'
" let g:airline_theme='solarized'
let g:airline_theme='nord'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" let g:airline_left_sep=''
" let g:airline_right_sep=''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.maxlinenr = ' ☰'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap ¡ <Plug>AirlineSelectTab1
nmap ™ <Plug>AirlineSelectTab2
nmap £ <Plug>AirlineSelectTab3
nmap ¢ <Plug>AirlineSelectTab4
nmap ∞ <Plug>AirlineSelectTab5
nmap § <Plug>AirlineSelectTab6
nmap ¶ <Plug>AirlineSelectTab7
nmap • <Plug>AirlineSelectTab8
nmap ª <Plug>AirlineSelectTab9
nmap ≤ <Plug>AirlineSelectPrevTab
nmap ≥ <Plug>AirlineSelectNextTab
