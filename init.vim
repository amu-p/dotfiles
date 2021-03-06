if &compatible
  set nocompatible
endif

" dein settings {{{
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let s:toml_dir = expand('~/AppData/Local/nvim')

execute 'set runtimepath+=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif
" }}}

filetype plugin indent on
syntax enable

set number
set nowrap
set splitbelow
set splitright
set noequalalways               " all the windows are not automatically made the same size.
set wildmenu                    " command-line completion operates in an enhanced mode.
set ruler
set cursorline
set virtualedit=block
set clipboard+=unnamedplus

set tabstop=2
set shiftwidth=2
set expandtab

set smartcase
set ignorecase
set nowrapscan

nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap <silent> <C-n> :<C-u>tabnext<CR>
nnoremap <silent> <C-p> :<C-u>tabprev<CR>
nnoremap <C-c> <C-w><C-c>

nnoremap <silent> <ESC><ESC> :<C-u>noh<CR>

inoremap <silent> jj <ESC>:<C-u>w<CR>
inoremap <C-d> <BS>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

nnoremap / /\v
nnoremap ? ?\v
nnoremap <space>.. :<C-u>e ~/AppData/Local/nvim/init.vim<CR>
nnoremap <space>.g :<C-u>e ~/AppData/Local/nvim/ginit.vim<CR>

command! CurrDir :lcd %:h
command! Dm :Denite file_mru
