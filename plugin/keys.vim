" faster viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" disable arrow keys
nnoremap <Left> <Nop>
nnoremap <right> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>

" exit insert mode with double-j
imap jj <Esc>
inoremap <S-CR> <Esc>

" moving in the location list
nnoremap <leader>[ :lprevious<CR>
nnoremap <leader>] :lnext<CR>
