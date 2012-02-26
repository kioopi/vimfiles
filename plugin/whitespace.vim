" remove trailing whitespace without side-effects
" from http://vimcasts.org/episodes/tidying-whitespace/
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" revove whitespace when file is saved
autocmd BufWritePre *.py,*.js,*.rb,*.html :call <SID>StripTrailingWhitespaces()


highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/


" trigger display of trailing spaces and newlines with <leader>s
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" remove all trailing whitespace with <leader>S
" TODO: use StripTrailingWhitespaces for this
noremap <leader>S :%s/\s\+$//g<CR>
