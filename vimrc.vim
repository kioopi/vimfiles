"
" vimrc
"

set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Vundler: Vim plugin manager
" "  :BundleList          - list configured bundles
" "  :BundleInstall(!)    - install(update) bundles
" "  :BundleSearch(!) foo - search(or refresh cache first) for foo
" "  :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" == Bundles  ===============================

Bundle 'rstacruz/sparkup', {'rtp': 'vim'}
" Sparkup: HTML helper
" "   <C-e>             - Expand (HTML only)
" "   <C-n>             - Move to next

Bundle 'SirVer/ultisnips'
" UltiSnips: Tab snippets
"   <Tab>             - Expand snippet
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsDontReverseSearchPath=0
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

Bundle 'tpope/vim-surround'
" Surround: Surround text.
"   (Visual) S"       - Surround with "
"   (Visual) gS"      - Surround with " and indent
"   cs"'              - Change surrounding thing from " to '
"   cst<a>            - Change surrounding XML tag to <a>
"   ds"               - Delete surrounding "
"   dst               - Delete surrounding HTML tag
"   ysiw]             - Surround with []
"   csw]              - Surround with []
"   yss]              - Surround entire line with []
"   ySiw]             - Surround with [], but indent

Bundle 'tpope/vim-commentary'
" commentary.vim: Comment stuff out.
"   \\\               -comment out a line (takes a count)
"   \\motion          -comment out motion

Bundle 'vim-scripts/YankRing.vim'
" YankRink: Kill-Ring like functionality for VIM
"   p                 - Paste first item in yr
"   <C-p>             - Paste previous item
"   :YRShow           - Show contents of yr
let g:yankring_history_dir = expand('$HOME') . '/.vim'

Bundle 'closetag.vim'
" Close XML/HTLM tags
" <C-_> add closing tag for last opened tag
"

Bundle 'matchit.zip'
" makes % matching useful

Bundle 'pangloss/vim-javascript'
" Better indention for js

" Plugins for working with buffers

" Bundle 'wincent/Command-T'
" Command-T
" Doen't work cause (assuming) cmd-T is compiled with ruby 1.9 and
" vim is compiled with ruby 1.8
" Needs fixing by compiling vim with 1.9
" Command T: File opener
"   \t, or <C-t>      - Open the file opener
" let g:CommandTMatchWindowAtTop=1 " show window at top

" Bundle 'mutewinter/LustyJuggler'
" <Leader>lj          - Open buffer menu
"
"

Bundle 'scrooloose/syntastic'
" Syntax checking hacks for vim
"
let g:syntastic_check_on_open=1
let g:syntastic_python_checker="flake8"
let g:syntastic_python_checker_args = "--max-line-length=80"

Bundle 'michaeljsmith/vim-indent-object'
" Text object for selecting via indentation
" <count>ai         (A)n (I)ndentation level and line above.
" <count>ii         (I)nner (I)ndentation level (no line above).
" <count>aI         (A)n (I)ndentation level and lines above/below.
" <count>iI         (I)nner (I)ndentation level (no lines above/below).

Bundle 'davidhalter/jedi-vim'
" Completion for almost anything (Ctrl+Space)
" Pydoc support (with highlighting, Shift+k).

Bundle 'tpope/vim-haml'
" Vim runtime files for Haml, Sass, and SCSS


" Test runner
" "   <F10>   - Run tests
" "   ,tl     - Open test log
" "
" map <F10> :Test<Cr>
" map ,tl <C-w>n:e test.log<Cr>a<Esc>:set ft=ruby<Cr>

" =======================================================
"
" For bundles not managed by Vundle, plop them onto extras/.
let extra_paths=substitute(glob('~/.vim/extras/*'), '\n', ',', 'g')
exec 'set runtimepath+=' . extra_paths

" =======================================================

filetype plugin indent on
