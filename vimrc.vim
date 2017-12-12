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
" "   <C-s>             - Move to next

let g:sparkupExecuteMapping = '<c-e>'
let g:sparkupNextMapping = '<c-s>'

Bundle 'SirVer/ultisnips'
" UltiSnips: Tab snippets

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsDontReverseSearchPath=0
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsListSnippets="<leader><tab>"

Bundle 'honza/vim-snippets'


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

Bundle 'tpope/vim-eunuch'
"   :Unlink: Delete a buffer and the file on disk simultaneously.
"   :Remove: Like :Unlink, but doesn't require a neckbeard.
"   :Move: Rename a buffer and the file on disk simultaneously.
"   :Chmod: Change the permissions of the current file.
"   :SudoWrite: Write a privileged file with sudo.
"   :W: Write every open window.  Handy for kicking off test autorunners.

Bundle 'vim-scripts/YankRing.vim'
" YankRink: Kill-Ring like functionality for VIM
"   p                 - Paste first item in yr
"   <C-p>             - Paste previous item
"   :YRShow           - Show contents of yr
let g:yankring_history_dir = expand('$HOME') . '/.vim'

Bundle 'ton/vim-bufsurf'
" :BufSurfBack
" :BufSurfForward
nmap <S-BS> :BufSurfBack<CR>
nmap <BS> :BufSurfForward<CR>

Bundle 'closetag.vim'
" Close XML/HTLM tags
" <C-_> add closing tag for last opened tag
"

Bundle 'matchit.zip'
" makes % matching useful

Bundle 'pangloss/vim-javascript'
" Better indention for js

" Bundle 'marijnh/tern_for_vim'
" Tern-based JavaScript editing support.
" let g:tern#command = ['nvm', 'run', '0.10.5', expand('<sfile>:h') .  '/../node_modules/tern/bin/tern']

"Bundle 'chemzqm/vim-jsx-improve'


" Bundle 'tpope/vim-vinegar'
" - Open netrw

Bundle 'elzr/vim-json'
" JSON Syntax
let g:vim_json_syntax_conceal = 0

" Plugins for working with buffers
"
set rtp+=~/.fzf
Bundle 'junegunn/fzf.vim'
Bundle 'junegunn/fzf'

nmap <Leader>b :Buffers<CR>
nmap <Leader>f :Files<CR>



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
let g:syntastic_javascript_checkers = ['eslint', 'flow']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_javascript_flow_exe = 'flow'
let g:syntastic_aggregate_errors = 1

" Bundle 'Shougo/neocomplete'
" keyword completion system

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

Bundle 'junegunn/goyo.vim'
" Distraction-free writing in Vim.
" Map Goyo toggle to <Leader> + spacebar
nnoremap <Leader><Space> :Goyo<CR>

""""" Python

Bundle 'michaeljsmith/vim-indent-object'
" Text object for selecting via indentation
" <count>ai         (A)n (I)ndentation level and line above.
" <count>ii         (I)nner (I)ndentation level (no line above).
" <count>aI         (A)n (I)ndentation level and lines above/below.
" <count>iI         (I)nner (I)ndentation level (no lines above/below).

Bundle 'davidhalter/jedi-vim'
" Completion for almost anything (Ctrl+Space)
" Pydoc support (with highlighting, Shift+k).

""""" Ruby

" Bundle 'tpope/vim-haml'
" Vim runtime files for Haml, Sass, and SCSS

" Test runner
" "   <F10>   - Run tests
" "   ,tl     - Open test log
" "
" map <F10> :Test<Cr>
" map ,tl <C-w>n:e test.log<Cr>a<Esc>:set ft=ruby<Cr>
"
"Bundle 'tpope/vim-rails'
" Ruby on Rails power tools
" :A (alternate)
" :R (related)
" :Emodel, Econtroller, Eview to jump to files
" :Rake run current test
" :.Rake run test of method on line
" :Rextract extract partial/helper

Bundle 'tpope/vim-bundler'

Bundle 'thoughtbot/vim-rspec'
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" this assumes vim was opened from rails app root dir
let g:rspec_command = "!bin/rspec {spec}"

Bundle 'kana/vim-textobj-user'
" vim-textobj-user is a Vim plugin to create your own text objects without
" pain. Required by:

Bundle 'nelstrom/vim-textobj-rubyblock'
" makes text-object for ruby blocks available
" vir : visually select in ruby block

"""""

""""" Elixir

Bundle 'elixir-editors/vim-elixir'

"""""

Bundle 'vim-scripts/vimwiki'
" <Leader>ww -- Open default wiki index file.
" <Leader>wt -- Open default wiki index file in a new tab.
" <Leader>ws -- Select and open wiki index file.
" <Leader>wd -- Delete wiki file you are in.
" <Leader>wr -- Rename wiki file you are in.
" <Enter> -- Follow/Create wiki link
" <Shift-Enter> -- Split and folow/create wiki link
" <Ctrl-Enter> -- Vertical split and folow/create wiki link
" <Backspace> -- Go back to parent(previous) wiki link
" <Tab> -- Find next wiki link
" <Shift-Tab> -- Find previous wiki link

let wiki = {}
let wiki.path = '~/Dropbox/wiki/'
let wiki.auto_export = 1
let wiki.template_path = '~/Dropbox/wiki_templates/'
let wiki.template_default = 'default'
let wiki.template_ext = '.html'

let g:vimwiki_list = [wiki]

Bundle 'evanmiller/nginx-vim-syntax'
" Syntax highlighting for nginx conf
" NOTE: As of Dec. 2013, this is  maintained in the "contrib" dir of the Nginx source:
" Shttp://hg.nginx.org/nginx/rev/f38043bd15f5


"""" Golang

Bundle 'dgryski/vim-godef'
" makes gd work for go via godef
" needs: go get -v code.google.com/p/rog-go/exp/cmd/godef

let g:godef_split=0
let g:godef_same_file_in_same_window=1

set runtimepath+=$GOSHARE/misc/vim

Bundle 'asciidoc/vim-asciidoc'

"""" Colors

Bundle 'https://github.com/freeo/vim-kalisi'
Bundle 'ajh17/Spacegray.vim'


" =======================================================
"
" For bundles not managed by Vundle, plop them onto extras/.
let extra_paths=substitute(glob('~/.vim/extras/*'), '\n', ',', 'g')
exec 'set runtimepath+=' . extra_paths

" =======================================================
"
" FIXME: this should move somewhere useful
set runtimepath+=/usr/local/go/misc/vim

filetype plugin indent on
