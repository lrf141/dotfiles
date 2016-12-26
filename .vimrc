if has("syntax")
	syntax on
endif


if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'tomasr/molokai'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Townk/vim-autoclose'

call neobundle#end()

NeoBundleCheck

filetype plugin indent on
colorscheme molokai


set number
set title
set tabstop=2
set expandtab
set shiftwidth=2

nnoremap <silent><C-e> :NERDTree<CR>
