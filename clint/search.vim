set gdefault
set hlsearch
set incsearch

vmap " Simple way to turn off highlighting
nnoremap <leader><space> :noh<cr>

" Easier options for searching
set ignorecase
set smartcase

" Search for selected text in visual mode with */#
" effect: overrides unnamed register
" Simplest version: vnoremap * y/<C-R>"<CR>
" Better one: vnoremap * y/\V<C-R>=escape(@@,"/\\")<CR><CR>
" This is so far the best, allowing all selected characters and multiline selection:
" Atom \V sets following pattern to "very nomagic", i.e. only the backslash has special meaning.
" As a search pattern we insert an expression (= register) that
" calls the 'escape()' function on the unnamed register content '@@',
" and escapes the backslash and the character that still has a special
" meaning in the search command (/|?, respectively).
" This works well even with <Tab> (no need to change ^I into \t),
" but not with a linebreak, which must be changed from ^M to \n.
" This is done with the substitute() function.
vnoremap * y/\V<C-R>=substitute(escape(@@,"/\\"),"\n","\\\\n","ge")<CR><CR>
vnoremap # y?\V<C-R>=substitute(escape(@@,"?\\"),"\n","\\\\n","ge")<CR><CR>


