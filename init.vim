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

  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif
" }}}

filetype plugin indent on
syntax enable

set number
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

set nowrapscan

nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap <C-c> <C-w><C-c>

nnoremap <silent> <ESC><ESC> :<C-u>noh<CR>

inoremap <silent> jj <ESC>:<C-u>w<CR>
inoremap <C-d> <BS>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

nnoremap <space>.. :<C-u>e ~/AppData/Local/nvim/init.vim<CR>
nnoremap <space>.g :<C-u>e ~/AppData/Local/nvim/ginit.vim<CR>

" deoplete settings {{{
let g:deoplete#enable_at_startup = 1
" call deoplete#custom#option('smart_case', v:true)
" }}}
