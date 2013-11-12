" Vundle settings
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:

" Git / vim integration
Bundle 'tpope/vim-fugitive'

" Standard settings
Bundle 'tpope/vim-sensible'

" Useful shortcuts (e.g., [q and ]q in quickfix)
Bundle 'tpope/vim-unimpaired'

" Move through files easier
Bundle 'Lokaltog/vim-easymotion'

" Easily open files
Bundle 'kien/ctrlp.vim'

Bundle 'surround.vim'

" Shell support within vim
Bundle 'vim-scripts/Conque-Shell'

" For ctags
Bundle 'Tagbar'

" Scala syntax, etc.
Bundle 'derekwyatt/vim-scala'

" Avro syntax
Bundle 'http://github.com/dln/avro-vim/'

" Python folding
Bundle 'tmhedberg/SimpylFold'

Bundle 'keepcase.vim'


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
" Syntax checking
" Nice, but *really* slow on writes...
"Bundle 'Syntastic'
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


