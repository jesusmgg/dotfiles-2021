set ideajoin

set background=dark
set number relativenumber
set noshowmode
set laststatus=2

set visualbell
set noerrorbells

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase

set nocompatible
filetype plugin on
syntax on

set langmenu=en_US.UTF-8
language en

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'vimwiki/vimwiki'
call plug#end()

let g:lightline = {
    \ 'colorscheme': 'wombat',
\ }
