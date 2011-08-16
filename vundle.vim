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

"-- file and buffer management -----------------------------------------
"" Fast file- and buffer-finding
Bundle 'LustyExplorer'
Bundle 'LustyJuggler'

" BufExplorer
Bundle 'bufexplorer.zip'

" Switch between header and source files (e.g. C/C++...)
" FIXME:  Turned off while a.vim has those awful insert-mode keymaps
"Bundle 'a.vim'

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

" Increment/decrement dates
Bundle 'speeddating.vim'

" Extends the % command to work with if/else/endif constructs, HTML tags...
Bundle 'matchit.zip'

" Mapping to autoclose HTML tags
Bundle 'closetag.vim'

" Write HTML faster
Bundle 'ZenCoding.vim'

" All completion done with tab
Bundle 'SuperTab-continued.'

" Snippets manager.  Hooks into Tab like YASnippet on emacs.
Bundle "git://github.com/MarcWeber/vim-addon-mw-utils.git"
Bundle "git://github.com/tomtom/tlib_vim.git"
Bundle "git://github.com/honza/snipmate-snippets.git"
Bundle "git://github.com/garbas/vim-snipmate.git"

" Fast commenting
Bundle 'The-NERD-Commenter'

"-- external commands --------------------------------------------------
" Terminal in vim.  Just one more step towards turning Vim into Emacs
Bundle 'Conque-Shell'

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
