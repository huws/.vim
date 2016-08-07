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
Bundle 'jceb/vim-hier'

" Now that vundle is loaded, we can go back to normal
filetype on

" Install all the bundles using the command below
" BundleInstall

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

" Turn ignore case on/off
" set ic
" set noic

" Use search highlighting and incremental search
set hls is

" Map the command for removing search highlighting
nnoremap <Leader>h :nohlsearch<CR>

" Map the command for toggling ignore case (and printing current setting)
nnoremap <Leader>i :set ic! ic?<CR>

" Map the command to toggle absolute line numbers on and off
nnoremap <Leader>nn :set nu!<CR>

" Map the command to toggle relative line numbers on and off
nnoremap <Leader>nr :set rnu!<CR>

" Map the command to toggle cursor line highlighting
nnoremap <Leader>l :set cul!<CR>

" Map the command to toggle paste mode
nnoremap <Leader>p :set paste! paste?<CR>

" A bunch of old build stuff that might be useful
" Define a custom Make command, which only outputs errors
" :command -nargs=* Make make -s | cwindow
" Might be able to make Make quiet with something like this:
" command! -nargs=1 Silent | execute ':silent !'.<q-args> | execute ':redraw!'
" Or possibly just by appending <CR> or maybe :echo<CR>
" nnoremap <Leader>m :w<CR>:Make<CR>

" Map the custom make and make test commands
nnoremap <Leader>m :w<CR>:silent! make -s\|:redraw!\|cw<CR>
nnoremap <Leader>t :w<CR>:silent! make -s test\|:redraw!\|cw<CR>

" Commands for paging through errors
nnoremap <Leader>j :cn<CR>
nnoremap <Leader>k :cp<CR>

" Map a write command
nnoremap <Leader>w :w<CR>

" Search up throught the parent directories until we find a tags file
set tags=tags;/

" Use red foreground text for highlighting errors
hi clear SpellBad
hi SpellBad ctermfg=red
" hi SpellBad cterm=underline ctermfg=red 

