" Use custom colour scheme
colorscheme hjs

" Use jj and jk  as an alternative to Escape to exit insert mode 
inoremap jj <ESC>
inoremap jk <ESC>

" Turn off those pesky cursor keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Use Space as an alternative to \ for the leader key
let mapleader = "\<Space>"

" Turn on automatic indentation
filetype plugin indent on

" Turn on syntax highlighting
syntax on

" Use UTF-8 encoding
set encoding=utf-8

" Set sane tab behaviour
set tabstop=4
set shiftwidth=4
set expandtab

