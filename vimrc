" vundle settings need to come first
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Load some vundle bundles
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-entire'

" Now that vundle is loaded, we can go back to normal
filetype on

" Use custom colour scheme
colorscheme elflord

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
set tabstop=2
set shiftwidth=2
set expandtab

" Set up a line-length ruler at 79 characters
:set colorcolumn=79

" Search up throught the parent directories until we find a tags file
set tags=tags;/

" Install all the bundles using the command below
" BundleInstall
