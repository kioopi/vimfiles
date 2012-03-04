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

Bundle 'chrismetcalf/vim-yankring'
" YankRink: Kill-Ring like functionality for VIM
"   p                 - Paste first item in yr
"   <C-p>             - Paste previous item
"   :YRShow           - Show contents of yr

Bundle 'closetag.vim'
" Close XML/HTLM tags
" <C-_> add closing tag for last opened tag
"

Bundle 'matchit.zip'
" makes % matching useful



" =======================================================
"
" For bundles not managed by Vundle, plop them onto extras/.
let extra_paths=substitute(glob('~/.vim/extras/*'), '\n', ',', 'g')
exec 'set runtimepath+=' . extra_paths


" Test runner
" "   <F10>   - Run tests
" "   ,tl     - Open test log
" "
" map <F10> :Test<Cr>
" map ,tl <C-w>n:e test.log<Cr>a<Esc>:set ft=ruby<Cr>

" =======================================================

filetype plugin indent on
