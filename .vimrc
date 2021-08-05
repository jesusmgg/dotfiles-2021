source ~/.dotfiles/vimconfig/coc.vim
source ~/.dotfiles/vimconfig/syntastic.vim
source ~/.dotfiles/vimconfig/plug.vim
source ~/.dotfiles/vimconfig/lightline.vim
source ~/.dotfiles/vimconfig/nerdtree.vim
source ~/.dotfiles/vimconfig/vimwiki.vim

silent! set ideajoin

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
filetype plugin indent on
syntax on
set cul

set encoding=utf-8
set langmenu=en_US.UTF-8
language en_US.UTF-8

colorscheme darcula
let g:darkula_emphasis=1
let g:darkula_level=1
set termguicolors

autocmd VimEnter * call lightline#update()

