let NERDTreeShowHidden = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "!",
    \ "Renamed"   : "->",
    \ "Unmerged"  : "m!",
    \ "Deleted"   : "x",
    \ "Dirty"     : "xx",
    \ "Clean"     : "✓",
    \ 'Ignored'   : 'I',
    \ "Unknown"   : "?"
    \ }

nnoremap <silent><C-e> :NERDTree<CR>
nmap     <Leader><Tab> <C-w>w
