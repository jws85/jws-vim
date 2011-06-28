" http://www.reddit.com/r/vim/comments/gexi6/a_smarter_statusline_code_in_comments/
" Based on the general structure of this guy's statusline, but without the
" ricey mode colorizing.
"
" Author:  Justin Smith <jwsmith2@gmail.com> and some dude on Reddit
" Date:    2011.05.25

set nocompatible
syntax on
set laststatus=2

function! MyStatusLine(mode)
	let statusline  = "[%F]\ "
	" line/column of cursor
	let statusline .= "(%l/%L,\ %c)\ "
	" not quite sure tbh
	let statusline .= "%P%=%h%w\ %y\ "
	" file encoding and format (e.g. utf-8/unix)
	let statusline .= "[%{&encoding}:%{&fileformat}]\ "
	" git status and branch
	let statusline .= "%{fugitive#statusline()}\ \ "
	return statusline
endfunction

au WinEnter * setlocal statusline=%!MyStatusLine('Enter')
au WinLeave * setlocal statusline=%!MyStatusLine('Leave')
set statusline=%!MyStatusLine('Enter')

