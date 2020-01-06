set autoindent
set background=dark
set nocompatible
set complete-=i
set cscopeverbose
set encoding=utf-8
set history=10000
set hlsearch
set incsearch
set langnoremap
set laststatus=2
set ruler
set showcmd
set sidescroll=1
set smarttab
set ttyfast
set wildmenu
set wildoptions="pum,tagfile"
set number relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set wrap linebreak
set wildmode=list:longest,full
set wildignore=*.o,*.swp,.git/
set ignorecase
set wildignorecase
set fileignorecase
set nofoldenable
set colorcolumn=72

"key binding
map , <leader>
inoremap jk <esc>zz:w<cr>
nnoremap j gjzz
nnoremap k gkzz
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>z :wa!<cr>
nnoremap <leader>q :q<cr>

filetype plugin indent on
syntax enable

"Fortran
let fortran_more_precise = 1
let fortran_do_enddo = 1
au BufEnter,BufNew *.f let fortran_fixed_source = 1
au BufEnter,BufNew *.f90 let fortran_free_source = 1

"jump to last cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
    \ exe "normal! g'\"" | endif

"vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'yhu266/vim-fortran-snippets'
Plug 'yhu266/vim-tex-snippets'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-endwise'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

"nerdtree
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDTreeCaseSensitiveSort = 1
let NERDTreeBookmarksSort = 2
let NERDTreeQuitOnOpen = 1
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrowExpandable = "+"
let NERDTreeDirArrowCollapsible = "-"

"ultisnips
let g:UltiSnipsEnableSnipMate = 0

"vim-colors-solarized
colorscheme solarized

"nerdcommenter
let g:NERDCustomDelimiters = {
    \ 'fortran': {
    \   'left': '!!',
    \   'leftAlt': '!>',
    \   'right': '',
    \   'rightAlt': '', },
    \ }
let g:NERDDefaultAlign = 'start'

"lightline
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

"vim-gitgutter
set updatetime=100
