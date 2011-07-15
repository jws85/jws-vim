"" Justin Smith's riced out .vimrc
"" I used emacs for three years and thus have the associated 'brain damage'
"" with needing as much unnecessary shit as possible to write code.  Oh well.
""
"" Author:  Justin Smith <jwsmith2@gmail.com>
"" Date:    2011-06-03

"-- external files -----------------------------------------------------
"" Go look how many plugins I've got/tried and gasp in horror.
source ~/.vim/vundle.vim

"" Loads site-specific settings for both cli-vim and gvim
source ~/.vim/site/all.vim

"" If the GUI is running, load GUI-specific settings
if has("gui_running")
	source ~/.vim/gvimrc.vim
endif

"-- settings -----------------------------------------------------------
"" No color theme set here:  I find the angry fruit salad default easier to read
"" in the terminal, so I set one in my .gvimrc.

"" Save local and global marks.  I don't want to keep typing out ssh://blah
set viminfo='100,f1

"" Keep vim from complaining about unsaved files in buffers.  I'm so used to
"" emacs buffer handling that this pisses me off.
set hidden

"" :o/:e/:b/command greedy completion.  Pretty nice, but Command-T is still better.
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.o,*.obj,.git,.svn

"" Turn off auto-insert comment leader.  Really annoying
au BufRead,BufNewFile,BufEnter * set formatoptions-=r

"" search settings
set incsearch  " incrementally finds matches through the haystack
set hlsearch   " highlights all matches
set smartcase  " search is case sensitive iff a capital letter is in the needle

"-- keybindings --------------------------------------------------------
"" I do NOT miss the chording from emacs and try to avoid it with leader keys,
"" unless it's an insert-mode mapping (i.e. omnicompletion).

"" Unset last search pattern by hitting escape
nnoremap <cr> :noh<cr><cr>

"" Leader: Sets the leader to comma instead of backslash.
" I use the leader a lot like emacs uses C-x.
let mapleader = ","

"" Toggle whitespace
map <Leader>s :set list!<cr>
highlight ExtraWhitespace ctermbg=red guibg=red
nnoremap <Leader>sn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
nnoremap <Leader>sf :match<CR>

"" Mappings to edit various vim settings files, and to reload the vimrc
"" or gvimrc afterwards
" e = edit, r = reload
" v = .vimrc, g = .gvimrc, sv = site vimrc, sg = site gvimrc
map <Leader>vev :e ~/.vimrc<cr>
map <Leader>veg :e ~/.gvimrc<cr>
map <Leader>vesv :e ~/.vim/site/all.vim<cr>
map <Leader>vesg :e ~/.vim/site/gui.vim<cr>
map <Leader>veb :e ~/.vim/vundle.vim<cr>
map <Leader>vr :source ~/.vimrc<cr>
map <Leader>vrv :source ~/.vimrc<cr>
map <Leader>vrg :source ~/.gvimrc<cr>

"" view current directory
map <Leader>d <ESC>:e %:p:h/<CR>

"" Switch buffers and tabs easier
map <Leader>bn :bn<cr>
map <Leader>bp :bp<cr>
map <Leader>bk :bw!<cr>
map <Leader>tn :tabn<cr>
map <Leader>tp :tabp<cr>
map <Leader>tc :tabnew<cr>
map <Leader>tk :tabclose<cr>

"" Move the working directory to the current one
map <Leader>cd :cd %:p:h<CR>:pwd<CR>

"" Insert mode:  Delete previous word
imap <C-BS> <C-W>

"" Quickfind: I hate using ex-commands to move through the list.
map <Leader>qn :cn<cr>
map <Leader>qp :cp<cr>
map <Leader>qc :ccl<cr>
map <A-n> :cn<CR>
map <A-p> :cp<CR>

"" Calculator: Needs Python (example: type ':Calc 2 + 3' and hit enter)
command! -nargs=+ Calc :py print <args>
py from math import *

"" Kill omnicomplete window once I'm done with it
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"-- plugins ------------------------------------------------------------
" These are all installed with Vundle

"" Gitv: An extension to fugitive that lets you easily view repo history
let g:Gitv_OpenHorizontal = 1
let g:Gitv_CommitStep = 9001
let g:Gitv_WipeAllOnClose = 1

"" LustyExplorer: Fast file and buffer finder
" I've tried Command-T and FuzzyFinder, but LustyExplorer (bad name) is
" the best 'fast file/buffer finder' I've found for Vim.  It works almost
" exactly like ido for emacs, which is a Good Thing.  Alas, it's a bit
" slower than Command-T, especially on large directories.
" The keybinds here are like ones I got used to when using Command-T
map <Leader>f :LustyFilesystemExplorerFromHere<CR>
map <Leader>fr :LustyFilesystemExplorer /<CR>
map <Leader>fh :LustyFilesystemExplorer ~<CR>
map <Leader>j :LustyBufferExplorer<CR>

"" LustyJuggler: Another fast buffer finder with a slightly NSFW name
map <Leader>bj :LustyJuggler<CR>
map <C-6> :LustyJugglePrevious<cr>
let g:LustyJugglerShowKeys = 'a'

"" Bufkill: Wipe out buffers without rearranging splits
map <Leader>k :BW!<CR>
map <Leader>bk :BW!<cr>

"" SuperTab: Autocompletion on Tab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestEnhanced = 1

"" SnipMate: Snippets manager
" I don't use it as much so I'd rather have the trigger key away
" from the SuperTab one
let g:snips_trigger_key='<C-CR>'

"-- gui stuff -----------------------------------------------------------
