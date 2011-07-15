" Justin Smith's riced-out .gvimrc
" emacs never had a good way of having different settings for using it in the
" terminal vs. using the GUI version.  Thankfully vim does this quite well.
"
" Author:  Justin Smith <jwsmith2@gmail.com>
" Date:    2011-06-30

"-- Loading site file --------------------------------------------------
" Certain settings (color schemes, window size/position, and font size)
" I find need to be configured on a per-install basis, so I've moved
" them into an external file that is *not* kept under source control.
source ~/.vim/site/gui.vim

"-- Cross-site GUI appearance ------------------------------------------
" I used emacs and so got used to nice window controls embedded into the
" text editor itself.  Vim can do this, but by default it's a lot more
" GNOME-friendly than I'd prefer.  These settings fix that.

" Turn off blinky cursor
set guicursor+=a:blinkon0

" Line numbering
set nu

" Turn off scrollbars
set guioptions+=LlRrb
set guioptions-=LlRrb

" Turn off toolbar
set guioptions-=T

" Turn off GUI tab bar.  I like the CLI one much better
set guioptions-=e

" Turn off menu bar
set guioptions-=m

" Turn off GUI dialog boxes; turn on console ones
" I *HATE* the GUI dialog boxes, as they either require you to
" remember to tab over, or to USE THE MOUSE to use them.  Turn them
" off!
set guioptions+=c

"" Sets a pretty modeline at the bottom.
source ~/.vim/statusline.vim
