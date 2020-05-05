set gcr=a:blinkon1,a:block
set bo=all
set dy=lastline,msgsep
set nolrm
set shm=filnxtToOFI
set langnoremap
set noet ts=8 sw=8
set nu rnu
set bg=dark
set nolist listchars=tab:>-
set wim=list:longest,full wig=*.o,*.swp,*.DS_Store,*.git
set ic wic fic
set nofen
set nosmd
set cc=72
set cul
set cole=0
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
nnoremap <Leader>n :NERDTreeToggle<Cr>
filetype plugin indent on
syntax enable
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$")
	\ | exe "normal! g'\""
	\ | endif
call plug#begin(stdpath("data")."/plugged")
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'itchyny/lightline.vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'bfrg/vim-cuda-syntax'
call plug#end()
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
let g:ctrlp_working_path_mode = 'wa'
let g:ctrlp_match_window = 'max:9'
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_depth = 9
let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/](bin|docs)$',
	\ 'file': '\v\.(dat)$',
	\ 'link': '',
	\ }
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
colo jellybeans
let fortran_more_precise = 1
let fortran_do_enddo = 1
let fortran_free_source = 1
au BufEnter,BufNew,BufRead *.h set ft=c
