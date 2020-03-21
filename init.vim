set number
set clipboard+=unnamedplus

set tabstop=2
set shiftwidth=2
set expandtab

set nowrapscan

nnoremap Y y$
nnoremap j gj
nnoremap k gk

nnoremap <space>.. :<C-u>e ~\AppData\Local\nvim\init.vim<CR>
nnoremap <space>.g :<C-u>e ~\AppData\Local\nvim\ginit.vim<CR>
