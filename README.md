Vimfiles
========

My VIM configuration.

Plugins are managed by [Vundle][vundle].


Usage
-----
Structure is largely identical to [rstacruz/vimfiles][rstacruz/vimfiles] without the rake file.  Also, i don't clone the repo directly into ~/.vim but manually set symlinks.

    * `vimrc.vim`         - Put your bundles here.
    * `plugin/`           - Put your initializers here.
    * `after/ftplugin/`   - Set your local options per filetype here, like tabstops and such.
    * `extras/`           - If you have Bundles without sources (ie, not to be managed by Vundler), put them here.

[vundle]: https://github.com/gmarik/vundle
[rstacruz/vimfiles]: https://github.com/rstacruz/vimfiles/
