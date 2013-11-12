octave.vim
==========

This is a mirror of [octave.vim][] providing syntax highlighting for
[GNU Octave][].

  [GNU Octave]: http://www.gnu.org/software/octave/
  [octave.vim]: http://www.vim.org/scripts/script.php?script_id=3600


Installation
------------

Install with [pathogen.vim][]:

    cd ~/.vim/bundle
    git clone git://github.com/jvirtanen/vim-octave.git

Add the following to your `~/.vimrc`:

    autocmd BufRead,BufNewFile *.m set filetype=octave

  [pathogen.vim]: https://github.com/tpope/vim-pathogen


License
-------

octave.vim is distributed under the same terms as GNU Octave itself.
