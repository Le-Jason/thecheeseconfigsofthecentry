syntax on

set encoding=UTF-8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set expandtab
set nowrap

set cursorline
set number
set relativenumber
set scrolloff=8

set noerrorbells visualbell t_vb=
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set clipboard=unnamed

set ignorecase
set smartcase
set incsearch
set hlsearch
set colorcolumn=80

" Set <leader> to space
let mapleader = " "

" Open netrw
nnoremap <leader>pv :Ex<CR>

" Move selected lines up/down in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Join lines without moving cursor
nnoremap J mzJ`z

" Scroll and center
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Search and center
nnoremap n nzzzv
nnoremap N Nzzzv

" Paste without overwriting the clipboard
xnoremap <leader>p "_dP

" Yank to system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Delete to black hole
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Disable Q
nnoremap Q <nop>

" Run tmux sessionizer (requires external script)
nnoremap <C-f> :silent !tmux neww tmux-sessionizer<CR>

" Navigate quickfix and location lists
nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

" Replace current word
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" Make current file executable
nnoremap <leader>x :!chmod +x %<CR>

" Source current file
nnoremap <leader><leader> :so<CR>

" Copy to system clipboard in visual mode with Ctrl-C
vnoremap <C-c> "+y
