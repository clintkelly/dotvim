" Vundle settings
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-unimpaired'
" Move through files easier
Bundle 'Lokaltog/vim-easymotion'
" Easily open files
"Bundle 'ctrlp'
Bundle 'kien/ctrlp.vim'
" Syntax checking
" Nice, but *really* slow on writes...
"Bundle 'Syntastic'
Bundle 'surround.vim'
" Nice color scheme
" Bundle 'molokai'
" Shell support within vim
"Bundle 'Conque-Shell'
Bundle 'vim-scripts/Conque-Shell'
" Another color scheme
" Bundle 'zenburn'

" [for HTML] Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
" [Has no docs I can find easily] Bundle 'L9'
" [Searching for tags, files, etc.] Bundle 'FuzzyFinder'
" non github repos
" Fast opening of files:
"Bundle 'git://git.wincent.com/command-t.git'
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'

" For ctags
Bundle 'Tagbar'

" Perl5-powered search in vim
"Bundle 'ack.vim'
" Tab completion when writing code
" Bundle 'ervandew/supertab'

"Bundle 'SuperTab'
"Bundle 'JSON.vim'

" Various version of snipmate (for boilerplate code)
" Bundle 'UltiSnips'

" Bundle 'honza/vim-snippets'
"Bundle 'snipMate'
"Bundle 'garbas/vim-snipmate'
" Snips for scala
" Bundle 'spiroid/vim-ultisnip-scala'

" Scala syntax, etc.
Bundle 'derekwyatt/vim-scala'

" Avro syntax
Bundle 'http://github.com/dln/avro-vim/'


" Specific java support
" Bundle 'vim-scripts/javacomplete.git'

" ...
" Others to check out
" tabular - text alignment


" abolish - for renaming variables in code
" gundo - graphical undo tree viewer
" matchit - match more than just { } and [ ] with %
" taglist - for ctags
" tagbar - also for tags, may be newer
" commentary - commenting code (or tcomment)
" Vwrapper - dunno
" Align - or something else
" ack - better search than builtin regex
" desert256
" tasklist - creates list with TODO, XXX, FIXME, etc.
" nerdtree?
" minibufexpl - https://github.com/fholgado/minibufexpl.vim.git
" Omnicomplete - more completion for programmers

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


