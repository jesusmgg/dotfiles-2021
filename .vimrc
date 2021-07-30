set ideajoin

set background=dark
set number relativenumber

set visualbell
set noerrorbells

set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase

syntax on

set langmenu=en_US.UTF-8
language en

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
call plug#end()

