" Justin Smith's riced-out .gvimrc
" emacs never had a good way of having different settings for using it in the
" terminal vs. using the GUI version.  Thankfully vim does this quite well.
"
" I just set color themes and stuff here... the majority of functionality is
" done in the ~/.vimrc
"
" Author:  Justin Smith <jwsmith2@gmail.com>
" Date:    2011.05.25

"-- window positioning -------------------------------------------------
" It doesn't work right on Ubuntu 11.04, damnit.
winpos 0 0
set lines=65 columns=152

"-- window appearance --------------------------------------------------
" turn on a nice syntax theme.  xoria256 is really nice; as is twilight.
filetype plugin on
colorscheme xoria256

" changing cursor colors and appearance
highlight iCursor guifg=#ff4444
highlight vCursor guifg=#ff44ff
set guicursor+=a:blinkon0

" i suppose i'll change the font again when i get bored
set guifont=Envy\ Code\ R\ 11

" line-numbering
set nu!

" turn off scrollbars
set guioptions+=LlRrb
set guioptions-=LlRrb

" turn off toolbar
set guioptions-=T

" turn off GUI tab bar.  I like the CLI one much better
set guioptions-=e

" turn off menu bar
set guioptions-=m

