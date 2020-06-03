" security
set exrc
set secure

" UI
set number
set relativenumber
set belloff=all
set display=lastline,msgsep
set shortmess=filnxtToOFI
set background=dark
set listchars=tab:>-
set noshowmode
set colorcolumn=80
set cursorline
set conceallevel=0

" ignore
set wildmode=list:longest,full
set wildignore=*.o,*.swp,*.DS_Store,*.git,*.h5
set ignorecase
set wildignorecase
set fileignorecase

" cursor
set guicursor=a:blinkon1,a:block

" editing
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nofoldenable
set diffopt+=vertical

" key binding
map <Space> <Leader>
inoremap jk <Esc>:wa<Cr>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap j gjzz
nnoremap k gkzz
nnoremap <Leader><Space> :nohlsearch<Cr>
nnoremap <Leader>w :wa!<Cr>
nnoremap <Leader>q :q<Cr>

" plugin
filetype plugin indent on
syntax enable
call plug#begin(stdpath("data")."/plugged")
Plug 'nanotech/jellybeans.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'vim-syntastic/syntastic'
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
Plug 'bfrg/vim-cuda-syntax', { 'for': 'cuda' }
" Plug 'jiangxincode/mpi.vim'
Plug 'yhu266/mpi.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'itchyny/lightline.vim'
call plug#end()

" resume location
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$")
	\ | exe "normal! g'\""
	\ | endif

" nanotech/jellybeans.vim
colorscheme jellybeans

" preservim/nerdcommenter
let g:NERDSpaceDelims = 1

" tpope/vim-repeat

" tpope/vim-endwise

" jiangmiao/auto-pairs

" easymotion/vim-easymotion

" ctrlpvim/ctrlp.vim
let g:ctrlp_working_path_mode = 'wa'
let g:ctrlp_match_window = 'max:9'
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_depth = 9
let g:ctrlp_custom_ignore = {
	\	'dir': '\v[\/](bin|obj|lib)$',
	\	'file': '\v\.(dat)$',
	\	'link': '',
	\}

" majutsushi/tagbar
nnoremap <Leader>t :TagbarToggle<Cr>

" preservim/nerdtree
nnoremap <Leader>n :NERDTreeToggle<Cr>
let NERDTreeCaseSensitiveSort = 1
let NERDTreeNaturalSort = 1
let NERDTreeHighlightCursorline = 0
let NERDTreeRespectWildIgnore = 1
let NERDTreeBookmarksSort = 2
let NERDTreeQuitOnOpen = 0
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrowExpandable = '+'
let NERDTreeDirArrowCollapsible = '-'
let NERDTreeWinSize = 39

" sjl/gundo.vim
nnoremap <Leader>u :GundoToggle<Cr>
let g:gundo_help = 0
let g:gundo_prefer_python3 = 1

" vim-syntastic/syntastic
let g:syntastic_c_config_file = ".syntastic_c_config"
let g:syntastic_cuda_config_file = ".syntastic_cuda_config"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
	\	'mode': 'active',
	\	'passive_filetypes': [ 'rst', ],
	\}

" tmux-plugins/vim-tmux

" bfrg/vim-cuda-syntax

" jiangxincode/mpi.vim

" tpope/vim-fugitive
nnoremap <Leader>g :Git<Space>
nnoremap <Leader>f :Gvdiffsplit<Cr>

" mhinz/vim-signify
set updatetime=100
let g:signify_sign_add = '+'
let g:signify_sign_delete = '-'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_change = '~'
let g:signify_sign_show_count = 0
highlight SignColumn ctermbg=NONE cterm=NONE guibg=NONE gui=NONE
highlight SignifySignAdd ctermfg=green guifg=#00ff00 cterm=NONE gui=NONE
highlight SignifySignDelete ctermfg=red guifg=#ff0000 cterm=NONE gui=NONE
highlight SignifySignChange ctermfg=blue guifg=#0000ff cterm=NONE gui=NONE

" itchyny/lightline.vim
let g:lightline = {
	\	'tab': {
	\		'active': [ 'tabnum', 'filename', 'modified', ],
	\		'inactive': [ 'tabnum', 'filename', 'modified', ],
	\	},
	\	'tabline': {
	\		'left': [ [ 'tabs', ] ],
	\		'right': [ [ ] ],
	\	},
	\	'colorscheme': 'jellybeans',
	\	'mode_map': {
	\		'n': 'N',
	\		'i': 'I',
	\		'R': 'R',
	\		'v': 'V',
	\		'V': 'V-L',
	\		"\<C-v>": 'V-B',
	\		'c': 'C',
	\		's': 'S',
	\		'S': 'S-L',
	\		"\<C-s>": 'S-B',
	\		't': 'T',
	\	},
	\	'active': {
	\		'left': [
	\			[ 'mode', 'paste', ],
	\			[ 'git_branch', ],
	\			[ 'relativepath', 'readonly', 'modified' ],
	\		],
	\		'right': [
	\			[ 'filetype', ],
	\			[ 'lineinfo', ],
	\		],
	\	},
	\	'inactive': {
	\		'left': [ [ 'relativepath', 'readonly', 'modified' ] ],
	\		'right': [ [ 'filetype' ] ],
	\	},
	\	'component_function': {
	\		'git_branch': 'FugitiveHead',
	\	},
	\}

" syntax: c
autocmd BufRead,BufNewFile *.h,*.c set filetype=c

" syntax: fortran
let fortran_more_precise = 1
let fortran_do_enddo = 1
let fortran_free_source = 1
