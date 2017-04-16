"Author Shane K. Panter
"shane@foundationcode.com
"spanter@cs.boisestate.edu"

"Load up pathogen so we can set any plugin options later
execute pathogen#infect()
"setup our leader key
let mapleader = ","

"set supertab to use omnicomplete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"

"set up ctags and tlist
let Tlist_Ctags_Cmd = "ctags"
let Tlist_WinWidth = 50
map <F4> :TagbarToggle<cr>
map <F6> :make<cr>
map <F8> :!ctags -R --fields=+nks --excmd=pattern --format=2 .<CR>

"Bind NerdTree to F5
map <F5> :NERDTreeToggle<cr>

"Change the default mapping to invoke CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"general code formating options
set linebreak
set nu
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set hlsearch
set incsearch
set backspace=indent,eol,start

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

"Kill evil trailing white space
function! TrimWhiteSpace()
	%s/\s\+$//e
endfunction

autocmd FileWritePre  * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FileWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre   * :call TrimWhiteSpace()

"Turn on vim-airline features
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'solarized'

"style options
set guifont=Menlo\ Regular:h10
syntax enable
if has('gui_running')
	colorscheme anderson
else
	set background=dark
	colorscheme solarized
endif

"setup options for gvim GUI
set guioptions-=m "remove the menu bar
set guioptions-=T "remove the toolbar
set guioptions-=r "remove right hand scroll bar

filetype plugin indent on
