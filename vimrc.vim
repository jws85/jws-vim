" Justin Smith's riced out .vimrc
" I used emacs for three years and thus have the associated 'brain damage'
" with needing as much unnecessary shit as possible to write code.  Oh well.
"
" Author:  Justin Smith <jwsmith2@gmail.com>
" Date:    2011.05.25

"-- external files -----------------------------------------------------
" Go look how many plugins I've got and gasp in horror.
source ~/.vim/vundle.vim

" Sets a pretty modeline at the bottom.
source ~/.vim/modeline.vim

" Company-specific data.  Does not come with my setup.
source ~/.vim/inttek.vim

"-- settings -----------------------------------------------------------
" No color theme set here:  I find the angry fruit salad default easier to read
" in the terminal, so I set one in my .gvimrc.

" Save local and global marks.  I don't want to keep typing out ssh://blah
set viminfo='100,f1

" Keep vim from complaining about unsaved files in buffers.  I'm so used to
" emacs buffer handling that this pisses me off.
set hidden

" :o/:e/:b/command greedy completion.  Pretty nice, but Command-T is still better.
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.o,*.obj,.git,.svn

" search settings
set incsearch  " incrementally finds matches through the haystack
set hlsearch   " highlights all matches
set smartcase  " search is case sensitive iff a capital letter is in the needle

"-- keybindings --------------------------------------------------------
" I do NOT miss the chording from emacs and try to avoid it with leader keys.

" Sets the leader to comma instead of backslash
let mapleader = ","

" view current directory
map <Leader>d <ESC>:e %:p:h/<CR>

" Switch tabs easier
map <Leader>n :bn<cr>
map <Leader>p :bp<cr>

"" Omnicompletion:  These have to be emacs-y because you do them in insert-mode.
" omnicompletion: words
inoremap <C-x>o <C-x><C-o>
" omnicompletion: filenames (why C-x C-f?  that's forever going to be 'close text editor' for me!)
inoremap <C-x>f <C-x><C-f>
" omnicompletion: lines
inoremap <C-x>l <C-x><C-l>

""" Does some stupid split-moving synchronization.
""" I was dealing with a nasty non-git-enabled merge, and was forced into
""" this setup.  It sucks ass, I hope to never use it again.
"" Moves both splits to top
"map <F12> gg<C-w><C-w>gg<C-w><C-w>
"" Moves both splits down
"map <C-n> j<C-w><C-w>j<C-w><C-w>
"" Moves both splits up
"map <C-p> k<C-w><C-w>k<C-w><C-w>

" calculator using Python (example: type ':Calc 2 + 3' and hit enter)
command! -nargs=+ Calc :py print <args>
py from math import *

"-- plugins ------------------------------------------------------------
"" gitv
let g:Gitv_OpenHorizontal = 1
let g:Gitv_CommitStep = 9001
let g:Gitv_WipeAllOnClose = 1

"" LustyExplorer
" I've tried Command-T and FuzzyFinder, but LustyExplorer (bad name) is
" the best 'fast file/buffer finder' I've found for Vim.  It works almost
" exactly like ido for emacs, which is a Good Thing.
" The keybinds here are like ones I got used to when using Command-T
map <Leader>f :LustyFilesystemExplorerFromHere<CR>
map <Leader>fr :LustyFilesystemExplorer<CR>
map <Leader>fh :LustyFilesystemExplorer ~<CR>
map <Leader>j :LustyBufferExplorer<CR>

