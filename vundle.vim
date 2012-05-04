" This is an init file for Vundle, which is essentially a package
" manager for vim.
" Yes I know I use way too many plugins.

"-- setup --------------------------------------------------------------
" This is cribbed from the example Vundle setup file.

" Boilerplate magic incantations
set nocompatible
filetype off

" Set up Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Vundle itself
Bundle 'gmarik/vundle'

"-- color schemes ------------------------------------------------------

" Scroll through installed colorschemes (I have 100+ of them so this helps)
Bundle 'ScrollColors'

" And this pulls in the 100 top color schemes
Bundle 'Color-Sampler-Pack'

" This pulls in some notable ones that are not represented in the above
Bundle 'twilight'
Bundle 'Solarized'
Bundle 'BusyBee'
Bundle 'Wombat'
Bundle 'Mustang2'
Bundle 'tir_black'
Bundle 'molokai'
Bundle 'Symfony'
Bundle 'peaksea'

" I also have some more sitting in my colors/* directory.  I've usually
" tried to tweak them by hand, but I have the eyes of a programmer, not
" a designer, so they usually look off.  Sorry.

"-- file and buffer management -----------------------------------------
"" Fast file- and buffer-finding
Bundle 'LustyExplorer'
Bundle 'LustyJuggler'
Bundle 'ctrlp.vim'

" BufExplorer
Bundle 'bufexplorer.zip'

" Kill/wipe buffer without rearranging windows
" :BW! is like good ol' C-x k from emacs.
Bundle 'bufkill.vim'

"-- editing extensions --------------------------------------------------
" Display ANSI escape codes as colors, etc, not as mojibake
Bundle 'AnsiEsc.vim'

" Allows plugins to hook into the . repeat command
Bundle 'repeat.vim'

" Allows you to quickly add surrounding characters
Bundle 'surround.vim'

" Allows movement in cStyledIdentifiers and also in python_styled_identifiers
Bundle 'camelcasemotion'

" Increment/decrement dates
Bundle 'speeddating.vim'

" Extends the % command to work with if/else/endif constructs, HTML tags...
Bundle 'matchit.zip'

" Mapping to autoclose HTML tags
Bundle 'closetag.vim'

" Write HTML faster
Bundle 'git://github.com/bingaman/vim-sparkup.git'

" Tab completion
Bundle 'SuperTab-continued.'

" Snippets manager
Bundle 'UltiSnips'

"-- external commands and other miscellany -----------------------------
" Terminal in vim.  Just one more step towards turning Vim into Emacs
Bundle "https://github.com/rson/vim-conque"

" Wiki implemented with vim
Bundle 'vimwiki'

" Git integration
Bundle 'tpope/vim-fugitive'
Bundle 'gitv'

" Interface with the 'ack' grep replacement.  On Ubuntu you will need to
" make a symlink from 'ack-grep' to 'ack' in /usr/bin; apparently 'ack' is
" also the name of a program used to do something with Japanese kanji.  Beats
" me.
Bundle 'ack.vim'

" PHP completion
Bundle 'phpcomplete.vim'

" Powerline
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
