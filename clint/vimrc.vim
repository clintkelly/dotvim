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
source ~/.vim/clint/color.vim
source ~/.vim/clint/statusline.vim
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
autocmd BufNewFile,BufRead *.py :set textwidth=100

autocmd BufRead,BufNewFile *.avdl setlocal filetype=avro-idl

" Python - fix the annoying thing with # going to the beginning of the line
" all of the time
autocmd BufRead,BufNewFile *.py :set nosmartindent
autocmd BufRead,BufNewFile *.py :set cindent

" Tell ctrlp to ignore .class and .html
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|html|class)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


" Call custom function to put function arguments onto a new line
nnoremap <leader>, :call AutoIndentVarList()

" Scala {{{3
let type_scala = {}
let type_scala.ctagstype = 'Scala'
let type_scala.kinds     = [
  \ {'short' : 'p', 'long' : 'packages',  'fold' : 1 },
  \ {'short' : 'V', 'long' : 'values',    'fold' : 0 },
  \ {'short' : 'v', 'long' : 'variables', 'fold' : 0 },
  \ {'short' : 'T', 'long' : 'types',     'fold' : 0 },
  \ {'short' : 't', 'long' : 'traits',    'fold' : 0 },
  \ {'short' : 'o', 'long' : 'objects',   'fold' : 0 },
  \ {'short' : 'a', 'long' : 'aclasses',  'fold' : 0 },
  \ {'short' : 'c', 'long' : 'classes',   'fold' : 0 },
  \ {'short' : 'r', 'long' : 'cclasses',  'fold' : 0 },
  \ {'short' : 'm', 'long' : 'methods',   'fold' : 0 }
\ ]
let type_scala.sro        = '.'
let type_scala.kind2scope = {
  \ 'T' : 'type',
  \ 't' : 'trait',
  \ 'o' : 'object',
  \ 'a' : 'abstract class',
  \ 'c' : 'class',
  \ 'r' : 'case class'
\ }
let type_scala.scope2kind = {
  \ 'type'           : 'T',
  \ 'trait'          : 't',
  \ 'object'         : 'o',
  \ 'abstract class' : 'a',
  \ 'class'          : 'c',
  \ 'case class'     : 'r'
\ }
"let s:known_types.scala = type_scala
