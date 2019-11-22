set number
set guicursor=a:block,a:blinkon1
set expandtab
set tabstop=2 shiftwidth=2
set wrap linebreak
set wildmode=list:longest,full
set wildignore=*.o,*.swp,.git/,.DS_Store,.localized
set ignorecase
set wildignorecase
set fileignorecase

" key binding
map , <leader>
inoremap jk <esc>zz:w<cr>
nnoremap j gjzz
nnoremap k gkzz
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>z :wa!<cr>

filetype plugin indent on
syntax enable

" f90
let fortran_free_source = 1
let fortran_more_precise = 1
let fortran_do_enddo = 1

" vim-plug
call plug#begin(stdpath('data').'/plugged')
Plug 'junegunn/fzf',{'dir':'~/.fzf','do':'./install --all'}
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'altercation/vim-colors-solarized'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-endwise'
call plug#end()

" nerdtree
let NERDTreeCaseSensitiveSort = 1
let NERDTreeBookmarksSort = 2
let NERDTreeQuitOnOpen = 1
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrowExpandable = "+"
let NERDTreeDirArrowCollapsible = "-"
let NERDTreeIgnore = ['.DS_Store', '.localized']
nnoremap <leader>n :NERDTreeToggle<cr>

" solarized
set background=light
colorscheme solarized

" vimtex
let g:tex_flavor  = 'latex'

" nerdcommenter
let g:NERDSpaceDelims = 1

" lightline
let g:lightline = {
  \ 'colorscheme': 'solarized'
  \ }
