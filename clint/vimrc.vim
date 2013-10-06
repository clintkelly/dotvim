set nocompatible               " be iMproved
filetype off                   " required!
set showmode
set background=dark
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set showcmd
syntax on

v<leader>a :Align =<cr>

" Can give you a visual clue if your code is going too far...
" Requires vim 7.3
set colorcolumn=100

" Quick shortcut to start conque
nnoremap <leader>c :ConqueTerm zsh
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_CWInsert = 1

" This means that you don't have to use escape too much
" Remap esc maybe to "df"
inoremap df <ESC>

source ~/.vim/clint/whitespace.vim
source ~/.vim/clint/search.vim
source ~/.vim/clint/splitting_and_opening.vim
source ~/.vim/clint/statusline.vim
source ~/.vim/clint/vundle.vim
source ~/.vim/clint/color.vim

