" http://www.reddit.com/r/vim/comments/gexi6/a_smarter_statusline_code_in_comments/
" I made some small changes to make the colors a bit less garish, and added
" the fugitive statusline in there as well.
"
" Author:  Justin Smith <jwsmith2@gmail.com> and some dude on Reddit[1]
" Date:    2011.05.25
"
" [1] I block reddit at work now so that I get a little bit more done :P
"     so I don't know the guy's username.  Pretty sure you could go to that
"     link and find it though.

set nocompatible
syntax on
set laststatus=2

"hi StatColor guibg=#d38c9e guifg=black ctermbg=lightgreen ctermfg=black
"hi Modified guibg=orange guifg=black ctermbg=lightred ctermfg=black

function! MyStatusLine(mode)
    let statusline=""
"    if a:mode == 'Enter'
"        let statusline.="%#StatColor#"
"    endif
"    let statusline.="\(%n\)\ %f\ "
"    if a:mode == 'Enter'
"        let statusline.="%*"
"    endif
"    let statusline.="%#Modified#%m"
"    if a:mode == 'Leave'
"        let statusline.="%*%r"
"    elseif a:mode == 'Enter'
"        let statusline.="%r%*"
"    endif
    let statusline .= "(%l/%L,\ %c)\ %P%=%h%w\ %y\ [%{&encoding}:%{&fileformat}]\ %{fugitive#statusline()}\ \ "
    return statusline
endfunction

au WinEnter * setlocal statusline=%!MyStatusLine('Enter')
au WinLeave * setlocal statusline=%!MyStatusLine('Leave')
set statusline=%!MyStatusLine('Enter')

"function! InsertStatuslineColor(mode)
"  if a:mode == 'i'
"    hi StatColor guibg=#e454ba ctermbg=lightred
"  elseif a:mode == 'r'
"    hi StatColor guibg=#e4a854 ctermbg=magenta
"  elseif a:mode == 'v'
"    hi StatColor guibg=#94bde5 ctermbg=magenta
"  else
"    hi StatColor guibg=red ctermbg=red
"  endif
"endfunction 
"
"au InsertEnter * call InsertStatuslineColor(v:insertmode)
"au InsertLeave * hi StatColor guibg=#be94e5 guifg=black ctermbg=lightgreen ctermfg=black
