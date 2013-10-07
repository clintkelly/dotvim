hi User1 ctermfg=DarkRed ctermbg=LightGray
hi User2 ctermfg=DarkRed ctermbg=LightGray
hi User3 ctermfg=DarkRed ctermbg=LightGray
hi User4 ctermfg=DarkRed ctermbg=LightGray
hi User5 ctermfg=DarkRed ctermbg=LightGray

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=\ %P                   "pct thru file
"set statusline +=%2*0x%04B\ %*          "character under cursor
set statusline+=%{fugitive#statusline()}\    

set laststatus=2


