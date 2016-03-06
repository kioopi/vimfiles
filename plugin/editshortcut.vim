" <leader>e to start a :e command-line with the current dir
noremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
" noremap ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
" noremap ,s :split <C-R>=expand("%:p:h") . "/" <CR>
