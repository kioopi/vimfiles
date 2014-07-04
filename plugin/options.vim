" == Options =================================================================

set encoding=utf-8              "enc:   Character encoding
set backspace=indent,eol,start  "bs:    Backspacing over insert mode
set history=200                 "hi:    lines of command line history
" set ruler                       "ru:    show the cursor position all the time
set showcmd                     "sc:    display incomplete commands
set incsearch                   "is:    do incremental searching
set hidden                      "hid:   Don't care about closing modified buffers
set winminheight=0              "wmh:   Allow showing windows as just status bars
"set mouse=a                     "       Enable the use of a mouse
"set nowrap
set title
set undolevels=1000

" == Folding =================================================================

set foldmethod=syntax           "fdm:   fold by the indentation by default
set foldnestmax=10              "deepest fold is 10 levels
set nofoldenable                "dont fold by default
set foldlevel=1

" == Search ==================================================================

set incsearch                   "is:    automatically begins searching as you type
set ignorecase                  "ic:    ignores case when pattern matching
set smartcase                   "scs:   ignores ignorecase when pattern contains uppercase characters
set hlsearch                    "hls:   highlights search results; ctrl-n or :noh to unhighlight
nmap <silent> <C-N> :silent noh<CR>

" == Programming =============================================================

syntax on                       "syn:   syntax highlighting
set cindent                     "cin:   enables automatic indenting c-style
set cinoptions=l1,j1            "cino:  affects the way cindent reindents lines
set showmatch                   "sm:    flashes matching brackets or parenthasis
set matchtime=3                 "mat:   How long to flash brackets
set listchars=tab:\ \ ,eol:◊,trail:•    "lcs:   makes finding tabs easier during `set list`  

" == Tabs ====================================================================

set softtabstop=2
set tabstop=2                   "ts:    number of spaces that a tab counts for
set shiftwidth=2                "sw:    number of spaces to use for autoindent
set smarttab                    "sta:   helps with backspacing because of expandtab
set expandtab                   "et:    uses spaces instead of tab characters

" == Macro helpers ===========================================================

set lazyredraw                  "lz:    will not redraw the screen while running macros (goes faster)

" == Backups =================================================================

set nobackup                    " Seriously, in this age of Git, who needs it
set nowritebackup               " Don't make a backup before overwriting
set directory=$HOME/.vim/swapfiles/ " Temp directory

" == HUD and status info =====================================================

" set number                      "nu:    numbers lines
" set numberwidth=5               "nuw:   width of number column
" set showmode                    "smd:   shows current vi mode in lower left
set showcmd                     "sc:    shows typed commands
set cmdheight=2                 "ch:    make a little more room for error message
set scrolloff=3                 "so:    places a couple lines between the current line and the screen edge
set sidescrolloff=1             "siso:  places a couple lines between the current column and the screen edge
" set laststatus=2                "ls:    makes the status bar always visible
set ttyfast                     "tf:    improves redrawing for newer computers

" == Menu completion =========================================================

set wildmenu                    "wmnu:  enhanced ed command completion
set wildmode=longest:full,list:full  "wim:   helps wildmenu auto-completion
set wildignore+=*.o,*.obj
set wildignore+=vendor,*.pyc,logs,tmp,.sass-cache,doc,*~

" == Use html syntax highlighter for hbs files

autocmd BufRead,BufNewFile *.hbs set syntax=html

" == Easy Pasting  ============================================================
set pastetoggle=<F2>

" == Use shorter versions of blocking messages.
set shortmess=atI
