set guicursor=a:blinkon1,a:block
set belloff=all
set display=lastline,msgsep
set nolangremap
set langnoremap
set shortmess=filnxtToOFI
set noexpandtab
set tabstop=4
set shiftwidth=4
set background=dark
set nolist
set listchars=tab:>-
set wildmode=list:longest,full
set wildignore=*.o,*.swp,*.DS_Store,*.git
set ignorecase
set wildignorecase
set fileignorecase
set nofoldenable
set noshowmode
set colorcolumn=79
set cursorline
set conceallevel=0
set diffopt+=vertical
map <Space> <Leader>
inoremap jk <Esc>:wa<Cr>
nnoremap j gjzz
nnoremap k gkzz
nnoremap <Leader><Space> :nohlsearch<Cr>
nnoremap <Leader>w :wa!<Cr>
nnoremap <Leader>q :q<Cr>
nnoremap <Leader>g :Git<Space>
nnoremap <Leader>n :NERDTreeToggle<Cr>
nnoremap <Leader>f :Gvdiffsplit<Cr>
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
let NERDTreeDirArrowExpandable = '+'
let NERDTreeDirArrowCollapsible = '-'
let NERDTreeWinSize = 39
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
	\       'active': [ 'tabnum', 'filename', 'modified' ],
	\       'inactive': [ 'tabnum', 'filename', 'modified' ]
	\   },
	\   'tabline': {
	\       'left': [ [ 'tabs' ] ],
	\       'right': [ [ ] ]
	\   },
	\   'colorscheme': 'jellybeans',
	\   'active': {
	\       'left': [
	\           [ 'mode', 'paste' ],
	\           [ 'git_branch' ],
	\           [ 'relativepath', 'readonly', 'modified' ]
	\       ],
	\       'right': [
	\           [ 'filetype' ],
	\           [ 'lineinfo' ]
	\       ]
	\   },
	\   'inactive': {
	\       'left': [ [ 'relativepath', 'readonly', 'modified' ] ],
	\       'right': [ [ 'filetype' ] ]
	\   },
	\   'component_function': {
	\       'git_branch': 'FugitiveHead'
	\   }
	\ }
colorscheme jellybeans
let fortran_more_precise = 1
let fortran_do_enddo = 1
let fortran_free_source = 1
au BufEnter,BufNew,BufRead *.h set ft=c
au BufEnter,BufNew,BufRead *.hpp set ft=cpp
