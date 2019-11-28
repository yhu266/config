set number relativenumber
set guicursor=a:block,a:blinkon1
set expandtab
set tabstop=2
set shiftwidth=2
set wrap linebreak
set wildmode=list:longest,full
set wildignore=*.o,*.swp,.git/,.DS_Store,.localized
set ignorecase
set wildignorecase
set fileignorecase
set nofoldenable

" key binding
map , <leader>
inoremap jk <esc>zz:w<cr>
nnoremap j gjzz
nnoremap k gkzz
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>z :wa!<cr>
nnoremap <leader>q :q<cr>

filetype plugin indent on
syntax enable

" f90
let fortran_free_source = 1
let fortran_more_precise = 1
let fortran_do_enddo = 1

" vim-plug
call plug#begin(stdpath('data').'/plugged')
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'yhu266/vim-snippets', { 'branch': 'fortran-extra' }
Plug 'yhu266/vim-fortran-snippets'
Plug 'altercation/vim-colors-solarized'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-endwise'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" nerdtree
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDTreeCaseSensitiveSort = 1
let NERDTreeBookmarksSort = 2
let NERDTreeQuitOnOpen = 1
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrowExpandable = "+"
let NERDTreeDirArrowCollapsible = "-"
let NERDTreeIgnore = ['.DS_Store', '.localized']

" ultisnips
let g:UltiSnipsEnableSnipMate = 0

" vim-colors-solarized
set background=light
colorscheme solarized

" vimtex
let g:tex_flavor  = 'latex'

" nerdcommenter
let g:NERDSpaceDelims = 1

" lightline
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste', ],
  \             [ 'git_branch', ],
  \             [ 'relativepath', 'readonly', 'modified', ], ],
  \   'right': [ [ 'lineinfo', ],
  \              [ 'fileencoding', ],
  \              [ 'filetype', ], ], },
  \ 'inactive': {
  \   'left': [ [ 'relativepath', 'readonly', 'modified', ], ],
  \   'right': [ [ 'fileencoding', ],
  \              [ 'filetype', ], ], },
  \ 'component_function': {
  \   'git_branch': 'FugitiveHead', },
  \ 'mode_map': {
  \   'n': 'N',
  \   'i': 'I',
  \   'R': 'R',
  \   'v': 'V',
  \   'V': 'VL',
  \   "\<C-v>": 'VB',
  \   'c': 'C',
  \   's': 'S',
  \   'S': 'SL',
  \   "\<C-s>": 'SB',
  \   't': 'T', },
  \ }

" vim-gitgutter
set updatetime=100

" ack.vim
let g:ackprg = 'ag --vimgrep'
cnoreabbrev Ack Ack!
nnoremap <leader>a :Ack!<space>
