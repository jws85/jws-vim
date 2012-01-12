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

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
