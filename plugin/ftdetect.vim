" Additional filename auto-detection schemes.

augroup filetypedetect
  au! BufNewFile,BufRead Gemfile   setf ruby
  au! BufNewFile,BufRead Guardfile   setf ruby
  au! BufNewFile,BufRead Thorfile  setf ruby
  au! BufNewFile,BufRead config.ru setf ruby
  au! BufNewFile,BufRead *.rake    setf ruby
  au! BufNewFile,BufRead *.thor    setf ruby
  au! BufNewFile,BufRead *.arb    setf ruby
  au! BufNewFile,BufRead *.json    setf json
augroup END
