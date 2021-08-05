source vimconfig/coc.vim

set ideajoin

set background=dark
set number relativenumber
set noshowmode
set laststatus=2
set hidden
set t_u7=

set nobackup
set nowritebackup
set updatetime=300
set cmdheight=2

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
set cul

set encoding=utf-8
set langmenu=en_US.UTF-8
language en

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'vimwiki/vimwiki'
Plug 'ap/vim-css-color'
Plug 'doums/darcula'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:lightline = {
    \ 'colorscheme': 'darculaOriginal',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
    \ },
\ }

colorscheme darcula
set termguicolors

