" Pathogen plugin
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" General
" Do not create swap file.
set noswapfile
" Enables syntax highlighting.
syntax on
" Use plugins specific to the file type.
filetype plugin on
" Enables filetype specific indent.
filetype indent on
" Enable line numbers.
set number
" Use Powerline font for special chars.
set anti enc=utf-8
set guifont=Inconsolata\ for\ Powerline\ Medium\ 12
" Explore list style
let g:netrw_liststyle=3

" Solarized plugin
" http://ethanschoonover.com/solarized/vim-colors-solarized
" Set color scheme.
set background=dark
if has('gui_running')
	colorscheme solarized
endif

" Airline plugin
" https://github.com/bling/vim-airline
" Always show status bar.
set laststatus=2
" Show tab bar.
let g:airline#extensions#tabline#enabled = 1
" Use powerline font.
let g:airline_powerline_fonts = 1

" YouCompleteMe plugin
" https://github.com/Valloric/YouCompleteMe.git
" Copen on error.
let g:clang_complete_copen = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" Vimtex plugin
" https://github.com/lervag/vimtex
" Prevent to detect a .tex file as plain text.
let g:tex_flavor = 'latex'

" Supertab plugin
" https://github.com/ervandew/supertab
" Set completion keys.
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
