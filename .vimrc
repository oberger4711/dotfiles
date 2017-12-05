" Pathogen plugin
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" General
" Use custom .vimrc from launch directory if existing.
:set exrc
" Add all subdirs from launch directory to path.
set path=$PWD/**
" Do not create swap file.
set noswapfile
" Enables syntax highlighting.
syntax on
" Use plugins specific to the file type.
filetype plugin on
" Enables filetype specific indent.
filetype indent on
set expandtab
set shiftwidth=4
set softtabstop=4
" Enable line numbers.
set number
" Highlight current line.
set cursorline
" Highlight matching [{()}].
set showmatch
" Use Powerline font for special chars.
set anti enc=utf-8
set guifont=Inconsolata\ for\ Powerline\ Medium\ 12
" Explore list style
let g:netrw_liststyle=3

" Solarized plugin
" http://ethanschoonover.com/solarized/vim-colors-solarized
" Set color scheme.
set background=light
colorscheme solarized
if has('gui_running')
else
	set t_Co=256
	set term=screen-256color
	let g:solarized_termcolors=256
endif

" Airline plugin
" https://github.com/bling/vim-airline
" Always show status bar.
set laststatus=2
" Show tab bar.
let g:airline#extensions#tabline#enabled = 1
" Use powerline font.
let g:airline_powerline_fonts = 1

" Vimtex plugin
" https://github.com/lervag/vimtex
" Prevent to detect a .tex file as plain text.
let g:tex_flavor = 'latex'

" Supertab plugin
" https://github.com/ervandew/supertab
" Set completion keys.
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
