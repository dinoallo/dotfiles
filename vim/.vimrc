" line number
set number
" syntax highlighting
syntax on
" color scheme
colorscheme koehler
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\}
" plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sensible'
Plug 'oblitum/rainbow'
call plug#end()
