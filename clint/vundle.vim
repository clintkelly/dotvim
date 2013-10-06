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
" Move through files easier
Bundle 'Lokaltog/vim-easymotion'
" Easily open files
"Bundle 'ctrlp'
Bundle 'kien/ctrlp.vim'
" Syntax checking
Bundle 'Syntastic'
Bundle 'surround.vim'
" Nice color scheme
" Bundle 'molokai'
" Shell support within vim
Bundle 'Conque-Shell'
" Another color scheme
" Bundle 'zenburn'

" [for HTML] Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
" [Has no docs I can find easily] Bundle 'L9'
" [Searching for tags, files, etc.] Bundle 'FuzzyFinder'
" non github repos
" Fast opening of files:
Bundle 'git://git.wincent.com/command-t.git'
" snipmate - code snippets
"Bundle 'snipMate'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
" For ctags
Bundle 'Tagbar'
" Perl5-powered search in vim
Bundle 'ack.vim'
" Tab completion when writing code
Bundle 'SuperTab'
Bundle 'JSON.vim'

" Optional:
Bundle "honza/vim-snippets"
" ...
" Others to check out
" abolish - for renaming variables in code
" gundo - graphical undo tree viewer
" matchit - match more than just { } and [ ] with %
" taglist - for ctags
" tagbar - also for tags, may be newer
" commentary - commenting code (or tcomment)
" Vwrapper - dunno
" Align - or something else
" ack - better search than builtin regex
" supertab - tab autocomplete
" desert256
" tasklist - creates list with TODO, XXX, FIXME, etc.
" nerdtree?
" tabular - text alignment

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


