"-- external files -----------------------------------------------------
"" Go look at how many plugins I've got/tried and gasp in horror.
source ~/.vim/vundle.vim

"-- syntax highlighting ------------------------------------------------
"" Needs to be set here to turn on for the terminal as well
syntax on

"-- 'degraded' mode ----------------------------------------------------
"" Turns off features that may make this setup slow on remote
"" connections.
"" gvim --cmd=DegradedVim
let g:degraded_mode = 0
fu! DegradedVim()
	let g:degraded_mode = 1
endfunction

"-- settings -----------------------------------------------------------
"" No color theme set here:  I find the angry fruit salad default easier to read
"" in the terminal, so I set one in my .gvimrc.

"" Save local and global marks.  I don't want to keep typing out ssh://blah
set viminfo='100,f1

"" Keep vim from complaining about unsaved files in buffers.  I'm so used to
"" emacs buffer handling that this pisses me off.
set hidden

"" Get rid of the godawful swap file system.  I save my files obsessively and
"" find that this is much more annoying than anything else
set noswapfile

"" :o/:e/:b/command greedy completion.  Pretty nice, but Command-T is still better.
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.o,*.obj,.git,.svn

"" Turn off auto-insert comment leader.  Really annoying
au BufRead,BufNewFile,BufEnter * set formatoptions-=r

"" Set all /tmp/mutt-* files to mail filetype
au BufRead,BufNewFile /tmp/mutt-* set tw=72
au BufRead,BufNewFile /tmp/mutt-* setfiletype mail

"" Viki
au BufRead,BufNewFile *.viki set ft=viki

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

"" Change syntaxes
map <Leader>yp :set filetype=php<cr>
map <Leader>yh :set filetype=html<cr>
map <Leader>yj :set filetype=javascript<cr>
map <Leader>yv :set filetype=vim<cr>

"" It blows my mind that there is no 'join lines without space' key yet
map <C-j> Jx

"" Mappings to edit various vim settings files, and to reload the vimrc
"" or gvimrc afterwards.  The 'global' (g)vimrc are the files in this dir,
"" which contain settings I want to be consistent across machines.
" Edit vimrc and gvimrc
map <Leader>ve :e ~/.vimrc<cr>
map <Leader>vev :e ~/.vimrc<cr>
map <Leader>veg :e ~/.gvimrc<cr>
" Edit global vimrc and gvimrc
map <Leader>vegv :e ~/.vim/vimrc.vim<cr>
map <Leader>vegg :e ~/.vim/gvimrc.vim<cr>
" Edit template vimrc and gvimrc
map <Leader>vetv :e ~/.vim/site/all.vim<cr>
map <Leader>vetg :e ~/.vim/site/gui.vim<cr>
" Edit vundle file
map <Leader>veb :e ~/.vim/vundle.vim<cr>
" Reload vimrc and gvimrc
map <Leader>vr :source ~/.vimrc<cr>
map <Leader>vg :source ~/.gvimrc<cr>

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
" These are all installed with Vundle.

"" CamelCaseMotion:  Moving in identifiers that are camelCased or
" underscore_delimited
map \w <Plug>CamelCaseMotion_w
map \b <Plug>CamelCaseMotion_b
map \e <Plug>CamelCaseMotion_e
omap \iw <Plug>CamelCaseMotion_iw
xmap \iw <Plug>CamelCaseMotion_iw
omap \ib <Plug>CamelCaseMotion_ib
xmap \ib <Plug>CamelCaseMotion_ib
omap \ie <Plug>CamelCaseMotion_ie
xmap \ie <Plug>CamelCaseMotion_ie

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
map <Leader>b :LustyBufferExplorer<CR>

"" LustyJuggler: Another fast buffer finder with a slightly NSFW name
map <Leader>bj :LustyJuggler<CR>
map <C-6> :LustyJugglePrevious<cr>
map <Leader>j :LustyJugglePrevious<cr>
let g:LustyJugglerShowKeys = 'a'

"" Bufkill: Wipe out buffers without rearranging splits
map <Leader>k :BW!<CR>
map <Leader>bk :BW!<cr>

"" SnipMate: Snippets manager
" I don't use it as much so I'd rather have the trigger key away
" from the SuperTab one
let g:snips_trigger_key='<C-CR>'

"" CloseTag: Quickly close HTML tags
" The following line is necessary to get it working in any language.
" It just sets the list of tags that idiomatically don't have a closing tag...
" Why doesn't CloseTag just set it to blank for unrecognized languages?
au Filetype php let b:unaryTagsStack="area base br dd dt hr img input link meta param"
au Filetype xml let b:unaryTagsStack="area base br dd dt hr img input link meta param"
au Filetype html let b:unaryTagsStack="area base br dd dt hr img input link meta param"

"" NeoComplCache: Completion, after it has popped every hormone and pill possible
" neocomplcache also has snippets, but iirc they were buggier than SnipMate
let g:neocomplcache_enable_at_startup = 1
" Turn neocomplcache autopopup off; I prefer more SuperTab-ish behavior
let g:neocomplcache_disable_auto_complete = 1
" Use smartcase
let g:neocomplcache_enable_smart_case = 1
" Use CamelCase completion
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Enable omnicomp for different langs (warning, php & ruby might slow it down)
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns = {}
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" OMFG popup on <tab>!!  Arigatou gozaimasu Shougo-san ^_^
" https://github.com/Shougo/neocomplcache/wiki/neocomplcache-tips%3A
fu! s:check_back_space()"{{{
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
endfunction"}}}
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>\<C-n>"
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ?  "\<TAB>" : "\<C-x>\<C-u>\<C-p>"
inoremap <expr><CR> pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>"
