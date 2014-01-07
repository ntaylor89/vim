"Author Shane K. Panter
"shane@foundationcode.com
"spanter@cs.boisestate.edu"

"General GUI stuff
set guioptions-=m "remove the menu bar
set guioptions-=T "remove the toolbar
set guioptions-=r "remove right hand scroll bar

"set supertab to use omnicomplete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"

"set up ctags and tlist
let Tlist_Ctags_Cmd = "ctags"
let Tlist_WinWidth = 50
map <F4> :TagbarToggle<cr>
map <F8> :!ctags -R --fields=+nks --excmd=pattern --format=2 .<CR>

set linebreak
set nu
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4 
set autoindent
set hlsearch
set incsearch

set equalprg=indent\ -kr
set spell

set guifont=Menlo\ Regular:h18

set ch=2		" Make command line two lines high
set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

filetype on
syntax on
filetype plugin on
filetype indent on
