set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Good for bulleted lists in .txt files
set autoindent
set smartindent



" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
"Invisible character colors
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59




" Remove all trailing whitespace in the file
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nnoremap <silent> <leader>W :call <SID>StripTrailingWhitespaces()<CR>
autocmd BufWritePre *.py,*.js,*.scala,*.java,*.avdl :call <SID>StripTrailingWhitespaces()


