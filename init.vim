" tab
set expandtab
set tabstop=4
set shiftwidth=4

" line number
set number
set relativenumber

" line wrapping
set wrap
set linebreak
set nolist

" wild mode
set wildmode=list:longest,full
set wildignore=*.o,*.swp,*.DS_Store,*.git

" editing
set ignorecase
set wildignorecase
set fileignorecase

" disable code folding
set nofoldenable

" UI
set background=dark
set noshowmode
set colorcolumn=72

" key binding
map <Space> <Leader>
inoremap jk <Esc>:w<Cr>
nnoremap j gjzz
nnoremap k gkzz
nnoremap <Leader><Space> :nohlsearch<Cr>
nnoremap <Leader>w :wa!<Cr>
nnoremap <Leader>q :q<Cr>
nnoremap <Leader>fh :e %<.h<Cr>
nnoremap <Leader>fc :e %<.c<Cr>
nnoremap <Leader>g :Git<Space>
nnoremap <leader>a :Ack!<Space>
nnoremap <Leader>t :TagbarToggle<Cr>
nnoremap <Leader>n :NERDTreeToggle<Cr>

" syntax
filetype plugin indent on
syntax enable

" hot exit
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

if has('nvim') " neovim specific setting
    set guicursor=a:block,a:blinkon1
else " vim specific setting
    set autoindent
    set complete-=i
    set cscopeverbose
    set encoding=utf-8
    set history=1000
    set hlsearch
    set incsearch
    set langnoremap
    set laststatus=2
    set nocompatible
    set ruler
    set showcmd
    set sidescroll=1
    set smarttab
    set ttyfast
    set wildmenu
    set wildoptions="pum,tagfile"
endif

" plugin with vim-plug
if has("nvim") " neovim plugin path
    call plug#begin(stdpath("data")."/plugged")
else " vim plugin path
    call plug#begin("~/.vim/plugged")
endif

" editing
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdtree'
let g:tagbar_case_insensitive = 1
let g:tagbar_compact = 1
let g:tagbar_indent = 1
let g:tagbar_expand = 1
let g:tagbar_iconchars = ['+', '-'] 
let NERDTreeCaseSensitiveSort = 1
let NERDTreeNaturalSort = 1
let NERDTreeHighlightCursorline = 0
let NERDTreeRespectWildIgnore = 1
let NERDTreeBookmarksSort = 2
let NERDTreeQuitOnOpen = 3
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrowExpandable="+"
let NERDTreeDirArrowCollapsible="-"

" snippet library
Plug 'yhu266/vim-snippets'

" git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
set updatetime=100

" commenting
Plug 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1

" file search
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_match_window = 'max:9'
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_depth = 9

" UI
Plug 'nanotech/jellybeans.vim'
Plug 'itchyny/lightline.vim'
Plug 'nathanaelkane/vim-indent-guides'
let g:lightline = {
    \   'tab': {
    \       'active': [
    \           'tabnum',
    \           'filename',
    \           'modified',
    \       ],
    \       'inactive': [
    \           'tabnum',
    \           'filename',
    \           'modified',
    \       ],
    \   },
    \   'tabline': {
    \       'left': [
    \           [
    \               'tabs',
    \           ],
    \       ],
    \       'right': [
    \           [ ],
    \       ],
    \   },
    \   'colorscheme': 'jellybeans',
    \   'active': {
    \       'left': [
    \           [
    \               'mode',
    \               'paste',
    \           ], [
    \               'git_branch',
    \           ], [
    \               'relativepath',
    \               'readonly',
    \               'modified',
    \           ],
    \       ],
    \       'right': [
    \           [
    \               'lineinfo',
    \           ], [
    \               'fileencoding',
    \           ], [
    \               'filetype',
    \           ],
    \       ],
    \   },
    \   'inactive': {
    \       'left': [
    \           [
    \               'relativepath',
    \               'readonly',
    \               'modified',
    \           ],
    \       ],
    \       'right': [
    \           [
    \               'fileencoding',
    \               'filetype',
    \           ],
    \       ],
    \   },
    \   'component_function': {
    \       'git_branch': 'FugitiveHead',
    \   },
    \   'mode_map': {
    \       'n': 'N',
    \       'i': 'I',
    \       'R': 'R',
    \       'v': 'V',
    \       'V': 'VL',
    \       "\<C-v>": 'VB',
    \       'c': 'C',
    \       's': 'S',
    \       'S': 'SL',
    \       "\<C-s>": 'SB',
    \       't': 'T',
    \   },
    \ }
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_default_mapping = 0

" language
Plug 'tmux-plugins/vim-tmux' " tmux config
Plug 'octol/vim-cpp-enhanced-highlight' " C/C++

if has("nvim") " neovim specific plugin
    Plug 'SirVer/ultisnips' " auto-completion engine
    Plug 'mileszs/ack.vim' " code search
    let g:ackprg = "ag --vimgrep"
    cnoreabbrev Ack Ack!
else " vim specific plugin
    " auto-completion engine
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'garbas/vim-snipmate'
endif

call plug#end()

" color
colorscheme jellybeans

" language specific setting

" Fortran
let fortran_more_precise = 1
let fortran_do_enddo = 1
let fortran_free_source = 1
au BufEnter,BufNew,BufRead *.fh set ft=fortran

" LaTeX
au BufEnter,BufNew,BufRead *.tex set ft=tex
au BufEnter,BufNew,BufRead *.sty set ft=tex
