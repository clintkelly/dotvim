set nocompatible               " be iMproved
filetype off                   " required!
source ~/.vim/clint/vundle.vim
set showmode
set background=dark
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set showcmd
syntax on

" Can give you a visual clue if your code is going too far...
" Requires vim 7.3
"set colorcolumn=100

" Quick shortcut to start conque
nnoremap <leader>c :ConqueTerm zsh
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_CWInsert = 1

" This means that you don't have to use escape too much
" Remap esc maybe to "df"
inoremap df <ESC>

nnoremap v V
nnoremap V v

source ~/.vim/clint/whitespace.vim
source ~/.vim/clint/search.vim
source ~/.vim/clint/splitting_and_opening.vim
source ~/.vim/clint/statusline.vim
source ~/.vim/clint/color.vim
source ~/.vim/clint/coding.vim

" Set UltiSnips to use something other than tab, so that we can use SuperTab
" at the same time
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Enable OmniCompletion
"set omnifunc=syntaxcomplete#Complete 
set omnifunc=javacomplete#Complete
" May be good for java:
" Also a tip:
"
" :set path=**
" :chdir your/project/root
" This makes ^wf on a classname a very nice feature for navigating a large
" project.

" Easy toggling for tagbar
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" Make DDL files look like SQL
autocmd BufNewFile,BufRead *.ddl :set syn=sql

" Not sure how this got screwed up...
autocmd BufNewFile,BufRead *.java :set textwidth=100

autocmd BufRead,BufNewFile *.avdl setlocal filetype=avro-idl

" Tell ctrlp to ignore .class and .html
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|html|class)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


" Call custom function to put function arguments onto a new line
nnoremap <leader>, :call AutoIndentVarList()
