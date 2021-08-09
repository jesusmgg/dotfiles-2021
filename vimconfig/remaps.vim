" Auto brackets
:inoremap {<CR> {<CR>}<C-c>O
:inoremap (<CR> (<CR>)<C-c>O
:inoremap [<CR> [<CR>]<C-c>O

" Searching
:noremap <leader><leader> :GFiles<CR>
:noremap <leader>f :Rg<CR>

" Reload config
:noremap <C-F5> :source ~/.vimrc<CR>


" Disable annoying remaps for ideavim
:noremap <leader><leader>i :iunmap {<lt>CR><CR>:iunmap [<lt>CR><CR>:iunmap (<lt>CR><CR>

