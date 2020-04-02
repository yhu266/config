if has("nvim")
    set gcr=a:blinkon1,a:block
    set bo=all
    set dy=lastline,msgsep
    set nolrm
	set shm=filnxtToOFI
else
    set hls is ai ar
    set bs=indent,eol,start
    set nocp
    set cpt-=i
    set cscopeverbose
    set enc=utf-8
    set fo=tcqj
    set nofs
    set hi=10000
    set langnoremap
    set ls=2
    set lcs="tab:> ,trail:-,nbsp:+"
    set nf="bin,hex"
    set ru
    set sc
    set ss=1
    set sta
    set tf
    set ssop="blank,buffers,curdir,folds,\help,tabpages,winsize"
    set wmnu wop="pum,tagfile"
endif
set noet ts=4 sw=4
set nu rnu
set bg=dark
set nolist listchars=tab:>-
set wim=list:longest,full wig=*.o,*.swp,*.DS_Store,*.git
set ic wic fic
set nofen
set nosmd
set cc=72
set cul
set ut=100
map <Space> <Leader>
inoremap jk <Esc>:wa<Cr>
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
filetype plugin indent on
syntax enable
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$")
    \ | exe "normal! g'\""
    \ | endif
if has("nvim")
    call plug#begin(stdpath("data")."/plugged")
else
    call plug#begin("~/.vim/plugged")
endif
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdtree'
Plug 'yhu266/vim-snippets'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'itchyny/lightline.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mileszs/ack.vim'
Plug 'bfrg/vim-cuda-syntax'
if has("nvim")
    Plug 'SirVer/ultisnips'
else
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'garbas/vim-snipmate'
endif
call plug#end()
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
let g:NERDSpaceDelims = 1
let g:ctrlp_match_window = 'max:9'
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_depth = 9
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
let g:ackprg = "ag --vimgrep"
cnorea Ack Ack!
colo jellybeans
let fortran_more_precise = 1
let fortran_do_enddo = 1
let fortran_free_source = 1
au BufEnter,BufNew,BufRead *.fh set ft=fortran
au BufEnter,BufNew,BufRead *.tex set ft=tex
au BufEnter,BufNew,BufRead *.tex set spl=en
au BufEnter,BufNew,BufRead *.tex set spell
au BufEnter,BufNew,BufRead *.sty set ft=tex
