" Justin Smith's riced-out .gvimrc
" emacs never had a good way of having different settings for using it in the
" terminal vs. using the GUI version.  Thankfully vim does this quite well.
"
" Author:  Justin Smith <jwsmith2@gmail.com>
" Date:    2011-06-03

" Load color themes/window size/pos/font here
source ~/.vim/site/gui.vim

" changing cursor colors and appearance
highlight iCursor guifg=#ff4444
highlight vCursor guifg=#ff44ff
set guicursor+=a:blinkon0

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

