
"
" See https://dougblack.io/words/a-good-vimrc.html for great guidance 
"

colors koehler
syntax on

set backspace=indent,eol,start
set expandtab
set ts=4
set sw=4
set ai
set fileformat=unix
set ffs=unix,dos
set ruler
set number
set belloff=all

"
" Highlighting
""""""""""""""""""""""""""""""""""""

" Highlight the current line in light grey
set cursorline
hi CursorLine guibg=#161616

" leader is comma
let mapleader=","

set guifont=hack
"set guifontwide=STKaiti

"
" Searching
""""""""""""""""""""""""""""""""""""

" highlight search results
set showmatch
set hls 

" highlight search results
set incsearch
set hlsearch

" turn off search highlight with spacebar
nnoremap <leader><space> :nohlsearch<CR>

"
" UTF-8
""""""""""""""""""""""""""""""""""""

" Use UTF-8
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

"
" Indentation rules.
""""""""""""""""""""""""""""""""""""

" Use 4 spaces for indents
autocmd BufRead *.java set expandtab ts=4 sw=4
autocmd BufRead *.py set ts=4 sw=4
autocmd BufRead *.lua set expandtab ts=2 sw=2
autocmd BufRead *.js set expandtab ts=2 sw=2 softtabstop=4
autocmd BufRead *.json set expandtab ts=2 sw=2 softtabstop=4

" Indent after typing <colon>, <cr>
autocmd BufRead *.py im :<CR> :<CR><TAB>

filetype plugin indent on

"
" NerdTree mappings
""""""""""""""""""""""""""""""""""""

" Map ctrl-space to open NerdTree
noremap <C-space> :NERDTreeToggle<CR>

" Close vim if NerdTree is the only window open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"
" Navigation
""""""""""""""""""""""""""""""""""""

" List buffers
nnoremap <leader><leader> :ls<CR>

" Cycle through buffers with shift-tab
nnoremap <S-tab> :bnext<CR>
nnoremap <S-A-tab> :bprev<CR>

" Nav directly to buffer
nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>6 :b6<CR>
nnoremap <leader>7 :b7<CR>
nnoremap <leader>8 :b8<CR>
nnoremap <leader>9 :b9<CR>

" Map tab navigation
nnoremap <C-A-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-A-tab> <Esc>:tabprevious<CR>
inoremap <C-tab>   <Esc>:tabnext<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

" Map kj in insert mode to <esc>
inoremap kj <esc>

nnoremap <leader>iso :%s/ISODate(\(.*\)")/\1"/<CR>
nnoremap <leader>nin %s/NumberInt(\(\d*\))/\1/<CR>

"
" Status line
""""""""""""""""""""""""""""""""""""

set laststatus=2                             " always show statusbar  
set statusline=  
set statusline+=%-10.3n\                     " buffer number  
set statusline+=%f\                          " filename   
set statusline+=%h%m%r%w                     " status flags  
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
set statusline+=%=                           " right align remainder  
set statusline+=0x%-8B                       " character value  
set statusline+=%-14(%l,%c%V%)               " line, character  
set statusline+=%<%P                         " file position  

" Make it easy to source your .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Set .tags as the ctags file. This will also tell vim
" to search up the directory tree for a .tags file.
set tags=./.tags;

" Use pathogen to manage dependencies
execute pathogen#infect()

