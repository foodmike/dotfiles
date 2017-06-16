
colors koehler
syntax on

set backspace=indent,eol,start
set expandtab
set ts=2
set sw=2
set ai
set fileformat=dos
set ffs=dos,unix
set ruler
set number
set belloff=all

set lines=50
set columns=100

" set guifont=ProggyCleanTT:h12
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI:qDRAFT

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
autocmd BufRead *.py set ts=4 sw=4
autocmd BufRead *.lua set ts=2 sw=2

" Indent after typing <colon>, <cr>
autocmd BufRead *.py im :<CR> :<CR><TAB>

" Turn on code completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType make set omnifunc=ccomplete#Complete sw=4 ts=4

filetype plugin indent on

