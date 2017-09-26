
syntax on

set backspace=indent,eol,start
set expandtab
set ts=4
set sw=4
set ai
set fileformat=dos
set ffs=dos,unix
set ruler
set number
set belloff=all

" set guifont=ProggyCleanTT:h12
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI:qDRAFT
set guifontwide=STKaiti

" highlight search results
set hls 

" Use UTF-8
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

"
" Indentation rules.
"
" Use 4 spaces for indents
autocmd BufRead *.java set ts=4 sw=4
autocmd BufRead *.py set ts=4 sw=4
autocmd BufRead *.lua set ts=2 sw=2

autocmd BufRead *.js set expandtab ts=2 sw=2 softtabstop=4
autocmd BufRead *.json set expandtab ts=2 sw=2 softtabstop=4

filetype plugin indent on

