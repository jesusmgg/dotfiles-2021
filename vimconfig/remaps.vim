" Auto brackets
:inoremap {<CR> {<CR>}<C-c>O
:inoremap (<CR> (<CR>)<C-c>O
:inoremap [<CR> [<CR>]<C-c>O

" Searching
:noremap <leader><leader> :Rg<CR>

" Reload config
:noremap <C-F5> :source ~/.vimrc<CR>
