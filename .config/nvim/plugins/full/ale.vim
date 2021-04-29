Plug 'dense-analysis/ale'

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" Keep the sign gutter open.
let g:ale_sign_column_always = 1

let g:ale_completion_enabled = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:airline#extensions#ale#enabled = 1
" let g:ale_lint_on_text_changed = 'normal'
let g:ale_linters = {
\  'css':        ['csslint'],
\  'javascript': ['standard'],
\  'json':       ['jsonlint'],
\  'php':        ['phpcs'],
\  'scss':       ['stylelint'],
\  'vue':        ['stylelint', 'eslint'],
\  'yaml':       ['yamllint']
\}
let b:ale_fixers = {
\  'css':        ['prettier'],
\  'javascript': ['prettier-standard'],
\  'json':       ['prettier'],
\  'scss':       ['prettier'],
\  'vim':        ['trim_whitespace', 'remove_trailing_lines'],
\  'vue':        ['eslint'],
\  'yml':        ['prettier']
\}

let g:ale_linter_aliases =  {'vue': ['javascript', 'scss']}
let g:ale_fix_on_save = 1
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'
nnoremap gn :ALENextWrap<cr>
nnoremap gp :ALEPreviousWrap<cr>
nmap <F8> <Plug>(ale_fix)
