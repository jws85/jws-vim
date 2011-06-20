" This is an init file for Vundle, which is essentially a package 
" manager for vim.
"
" Author:  Justin Smith <jwsmith2@gmail.com>
" Date:    2011-06-03

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

"-- installed bundles --------------------------------------------------
" Yes I know I use way too many plugins.

" Terminal in vim.  Just one more step towards turning Vim into Emacs
Bundle 'Conque-Shell'

" Scroll through installed colorschemes (I have 100+ of them so this helps)
Bundle 'ScrollColors'

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

" Git integration
Bundle 'tpope/vim-fugitive'
Bundle 'gitv'

"" Fast file- and buffer-finding (not as good as Command-T)
"Bundle 'L9'
"Bundle 'FuzzyFinder'

"" Fast file- and buffer-finding (file finding is wonky)
"Bundle 'Command-T'

"" Fast file- and buffer-finding
Bundle 'LustyExplorer'
Bundle 'LustyJuggler'

" Switch between header and source files (e.g. C/C++...)
Bundle 'a.vim' 

" Interface with the 'ack' grep replacement.  On Ubuntu you will need to
" make a symlink from 'ack-grep' to 'ack' in /usr/bin; apparently 'ack' is
" also the name of a program used to do something with Japanese kanji.  Beats
" me.
Bundle 'ack.vim'

" BufExplorer
Bundle 'bufexplorer.zip'

" PHP integration.
" A note regarding DBGp-client:  You will need a lot of stuff:
"  * a working LAMP stack
"  * xdebug
"  * some good easy way of enabling the xdebug tracing (there's a nice Firefox
"    plugin to do this)
" When this bundle installs, you will also need to symlink the plugin's .vim
" and .py files into ~/.vim/plugin/.  Lame, yes, but given my current line of
" work this plugin is indispensible.
Bundle 'phpcomplete.vim'
Bundle 'DBGp-client'

" Snippets manager.  Hooks into Tab like YASnippet on emacs.
Bundle 'snipMate'

" Fast commenting
Bundle 'The-NERD-Commenter'

" Kill/wipe buffer without rearranging windows
" :BW is like good ol' C-x k from emacs.
Bundle 'bufkill.vim'

" Automatically updates ctags files on save
"Bundle 'AutoTag'

"" local-vimrc.vim (doesn't get along with fugitive)
"Bundle 'lh-vim-lib'
"Bundle 'local_vimrc.vim'
