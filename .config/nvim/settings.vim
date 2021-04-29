scriptencoding utf-8

"
"              __   __   __
" .-----.-----|  |_|  |_|__.-----.-----.-----.
" |__ --|  -__|   _|   _|  |     |  _  |__ --|
" |_____|_____|____|____|__|__|__|___  |_____|
"                                |_____|
"

set autoread " Reload files changed outside vim
set backspace=indent,eol,start " Enable delete over line breaks and automatically-inserted indentation
set fileencoding=utf-8
set fileformat=unix " Set unix line endings
set fileformats=unix,mac,dos
set hidden " Don't unload buffers when they are abandoned, instead stay in the background
set lazyredraw " Screen will not be redrawn while running macros, registers or other non-typed comments
set noerrorbells
set nospell
set shortmess+=I
set viminfo='100,f1 " Save up to 100 marks, enable capital marks
set visualbell " Turn off audible bell

" Sets path variable to current directory
" set path=.,**
set path+=**

set wildmenu
set wildmode=longest,list:longest
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=go/pkg                           " Go static files
set wildignore+=go/bin                           " Go bin files
set wildignore+=go/bin-vagrant                   " Go bin-vagrant files
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=node_modules                     " Node.js modules

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
" set notimeout
" set ttimeout
" set ttimeoutlen=10

" Better Completion
" set complete=.,w,b,u,t
" set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete

set nobackup
set backupdir=~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/tmp,/var/tmp,/tmp
set history=1000
set undodir=~/tmp " set undo file location
set undofile
set undolevels=1000 " use many muchos levels of undo
set writebackup

set autoindent " autoindent based on line above, works most of the time
" set breakindent
set copyindent " copy the previous indentation on autoindenting
" set clipboard=unnamed
set cmdheight=2 " Give more space for displaying messages.
set diffopt+=vertical
set expandtab " use spaces instead of tabs
set foldenable " enable folding
set foldlevelstart=99 " open most folds by default
set foldnestmax=10 " 10 nested fold max
set foldmethod=indent " fold based on indent level
" set formatoptions+=a
set gdefault " Search everything, not just the current line
set hlsearch " highlight searches by default
set ignorecase
set incsearch " find the next match as we type the search
set laststatus=2
set linebreak
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set modelines=1
set mouse=a " Enable mouse use in all modes
set nocursorcolumn " Do not highlight column
set noequalalways
set nojoinspaces
set nolist
set number
set numberwidth=4
set relativenumber
set ruler
set scrolloff=5 " Keep the cursor visible within 3 lines when scrolling
set shiftwidth=4 " when reading, tabs are 4 spaces
set showbreak=↪ " Show line wrapping
set showmatch
set smartcase
" set smartindent " smarter indent for C-like languages
set noshiftround
" set nopreserveindent
set smarttab
" set nosmartindent
set tabstop=4
set softtabstop=4 " in insert mode, tabs are 4 spaces
set splitbelow
set splitright
set textwidth=0 " turn off hard word wrapping
set updatetime=300
set wrap
set wrapmargin=0
set tagcase=followscs " Follow smartcase and ignorecase when doing tag search
set wrapscan
set grepprg=rg\ --vimgrep

" MacVim
if (has('gui_macvim'))
    " set linespace=2 " Set line spacing
    set guifont=SF\ Mono\ Nerd\ Font:h12
    set guioptions=
    set guicursor=a:blinkon0
    set t_Co=256
    let g:python3_host_prog = '/usr/local/bin/python3'
endif

" MacVim
if has('nvim')
    set inccommand=nosplit
endif

" Make background transparent
if (has('nvim'))
    highlight Normal guibg=none ctermbg=none gui=none
    highlight NonText guibg=none ctermbg=none gui=none
    highlight SignColumn guibg=none ctermbg=none gui=none
    highlight EndOfBuffer guibg=none ctermbg=none gui=none
else
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
endif

" SignColumn
highlight SignColumn ctermbg=NONE cterm=NONE guibg=NONE gui=NONE

if !empty(glob('~/.config/nvim/full'))
    set colorcolumn=80,100 " Make a mark for columns 80 and 100
    set cursorline

    colorscheme nord
    set background=dark

    " Enable italics
    " highlight Comment gui=italic
    " highlight Comment cterm=italic
    " set t_ZH=[3m
    " set t_ZR=[23m
endif

