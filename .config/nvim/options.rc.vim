" 起動メッセージ
augroup InitialMessage
  autocmd!
  autocmd VimEnter * echo "(U^w^) < enjoy vimming! NO MORE emacs!!!"
augroup END
    
set number
set title
set tabstop=2
set expandtab
set shiftwidth=2
set updatetime=250
set noshowmode
set laststatus=2
set t_Co=256

" 不要なデフォルトプラグインを停止
let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1

let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1

let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1

let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1
