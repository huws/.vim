" vundle settings need to come first
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Load some vundle bundles
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-unimpaired'
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-entire'
Bundle 'jceb/vim-hier'
" Bundle 'vim-scripts/Conque-GDB'
Bundle 'vim-syntastic/syntastic'
Bundle 'rust-lang/rust.vim'

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
" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
" inoremap <Up> <Nop>
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" inoremap <Right> <Nop>

" Use . to apply last edit to each line in selection
vnoremap . :normal .<CR>

" Use ` to apply the last macro to each line in selection
vnoremap ` :normal @@<CR>

" Use Space as an alternative to \ for the leader key
let mapleader = "\<Space>"

" Turn on automatic indentation
filetype plugin indent on

" Turn on syntax highlighting
syntax on

" Use UTF-8 encoding
set encoding=utf-8

" Set sane default tab behaviour
set tabstop=2
set shiftwidth=2
set expandtab

" Set up a line-length ruler at 79 characters
:set colorcolumn=79

" Function for trimming whitespace
fun! TrimWhitespace()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfun

" Use // style comments for C and Java
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

" Set special-case tab behaviour for Python files
autocmd FileType python setlocal tabstop=4 shiftwidth=4

" Trim trailing whitespace on save
autocmd BufWritePre * :call TrimWhitespace()

" Use search highlighting and incremental search
set hls is

" Always show tabs at the top of files, even if there is only one tab
set showtabline=2

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

" Commands for opening/closing quickfix window
nnoremap <Leader>cc :cwindow<CR>
nnoremap <Leader>cx :cclose<CR>

" Map a write command
nnoremap <Leader>w :w<CR>

" Search up through the parent directories until we find a tags file
set tags=tags;/

" Use red foreground text for highlighting errors
hi clear SpellBad
hi SpellBad ctermfg=red
" hi SpellBad cterm=underline ctermfg=red

" Use %% as a shortcut for the directory of the current buffer (e.g. for :tabe)
cnoremap <expr> %%  getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Better filename completion on opening
set wildmode=longest,list,full
set wildmenu

" Syntastic general config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
  \ "mode": "active",
  \ "passive_filetypes": ["sh", "cpp"] }

" Syntastic Rust config
let g:rustfmt_autosave = 1

" Syntastic C++ config
" let g:syntastic_cpp_compiler = ""
" let g:syntastic_cpp_compiler_options = "-std=c++11 -fsyntax-only"

" Only enable when running on Windows under WSL
if !empty(glob("/mnt/c"))
    " copy (write) highlighted text to .vimbuffer
    vmap <Leader>c y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
    " paste from buffer
    map <Leader>v :r ~/.vimbuffer<CR>
endif

" For Windows context menu integration, run regedit and add the key:
"   HKEY_CLASSES_ROOT -> * -> shell -> Open with vim -> command
" With Data set to:
"   wsl vim "$(echo "%V" | sed 's#\\#/#g' | sed 's#^C:#/mnt/c#')"

" For keyboard shortcut, create a shortcut on the desktop with:
"   Target wsl.exe vim -c "cd /mnt/c/hjs/temp"
"   Shortcut key Ctrl+Shift+V
