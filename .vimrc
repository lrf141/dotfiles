if &compatible
	set nocompatible
endif

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('$HOME/.cache/dein')
	call dein#begin('$HOME/.cache/dein')
	call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')
	
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	
	" color scheme
	call dein#add('cocopon/iceberg.vim')
	call dein#add('sheerun/vim-wombat-scheme')

	" dir
	call dein#add('preservim/nerdtree')

	" status line
	"call dein#add('itchyny/lightline.vim')

	" airline
	call dein#add('vim-airline/vim-airline')
	call dein#add('vim-airline/vim-airline-themes')

	" tabline
	call dein#add('ap/vim-buftabline')

	call dein#add('airblade/vim-gitgutter')
	
	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
	call dein#install()
endif

" Personal settings
syntax on
set number
set cursorline
set smartindent
set tabstop=8
set shiftwidth=8

set fenc=utf-8
set nobackup
set noswapfile
set autoread
set showcmd

"set laststatus=2
set hlsearch

set hidden
set backspace=indent,eol,start

colorscheme iceberg

"let g:lightline = {
"	\ 'colorscheme': 'wombat',
"	\ }

" Airline Settings
let g:airline_theme = 'iceberg'

" Gitgutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'


" Short Cuts
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

