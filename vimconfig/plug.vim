call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'vimwiki/vimwiki'
Plug 'ap/vim-css-color'
Plug 'doums/darcula'
Plug 'jcorbin/darkula'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

