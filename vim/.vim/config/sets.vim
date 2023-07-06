" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Move viminfo file into .vim directory
set viminfo+=n~/.vim/viminfo

" User interface
filetype plugin indent on
syntax enable
colorscheme habamax
set number relativenumber "absolute linenumber
set laststatus=2          "always display statusbar
set showcmd               "show the command being typed
set noerrorbells          "disable beep on errors
set belloff=all           "disable beep for ALL errors
set colorcolumn=80        "good practice, line at 80 chars
set signcolumn=yes        "more consistent spacing in line numbers
set cursorline            "show cursorline
set list                  "enable option to show tab,eof,... as chars
set listchars+=eol:↴      "show eol characters
set listchars+=tab:>\ ,   "show tab characters
set listchars+=trail:·    "show trailing whitespace
set listchars+=nbsp:⎵     "show non breakable spaces

" Window splits
set splitright
set splitbelow

" Text rendering
set encoding=utf-8   "encoding that supports unicode
set nolinebreak        "don't wrap lines in middle of words
set scrolloff=6      "num of screen lines to keep above & below of cursor
set sidescrolloff=4  "num of screen cols to the left & right of cursor

" Searching
set ignorecase  "ignorecase when searching
set smartcase   "ignorecase except if we use uppercase
set nohlsearch  "don't highlight search matches
set incsearch   "show matches as they come

" Enable wildmenu (tab autocomplete for command mode)
set wildmenu                    "enable completion menu
set wildoptions="pum,tagfile"   "best options for menu
set tabpagemax=50               "limit max display to 50

" Temporary vim directories
set nobackup    "disable backup files
set swapfile    "enable swap file
set undofile    "enable undo-tree files"
set undodir=$HOME/.vim/undodir

" Misc options
set confirm             "confirmation msg when closing unsaved file
set hidden              "hide files in background instead of closing them
set nowrap              "disable line wrapping
set nofoldenable        "disable code folding
set autoread            "automatically re-read files in unchanged
set ttimeoutlen=50      "wait 50ms for keys
set ttyfast             "faster redrawing
set lazyredraw          "only redraw when necessary
set complete=.,w,b,u,t  "for built-in autocomplete
set completeopt="menu,menuone,noinsert"
