Vimfiles
========

My VIM configuration.

Plugins are managed by [Vundle][vundle].


Usage
-----
Structure is largely identical to [rstacruz/vimfiles][rstacruz/vimfiles] without the rake file.  Also, i don't clone the repo directly into ~/.vim but manually set symlinks.

    * `vimrc.vim`         - .vimrc
    * `plugin/`           - Put your initializers here.
    * `after/ftplugin/`   - Set your local options per filetype here, like tabstops and such.
    * `extras/`           - If you have Bundles without sources (ie, not to be managed by Vundler), put them here.

[vundle]: https://github.com/gmarik/vundle
[rstacruz/vimfiles]: https://github.com/rstacruz/vimfiles/

Getting started
---------------

After installing VIM:

   $ git clone git@github.com:kioopi/vimfiles ~/vimfiles
   $ ln -s ~/vimfiles/vimrc.vim ~/.vimrc
   $ mkdir ~/.vim
   $ mkdir ~/.vim/bundle
   $ mkdir ~/.vim/swapfiles
   $ ln -s ~/vimfiles/{after,extras,plugin,UltiSnips} ~/.vim/

Install Vundle

   $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Install Bundles

   $ vim -c BundleInstall
