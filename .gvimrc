
set columns=100

" execute pathogen#infect()

" }}}

" Spaces and tabs {{{
set tabstop=4           " visual spaces per tab
set softtabstop=4       " spaces in tab when editing
set expandtab           " tabs are spaces

" }}}

" UI {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line

filetype indent on      " load filetype-specific indent files

set wildmenu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]

set lines=85            " UI opens with this many lines
set columns=100         " UI opens with this many columns

" toggle relative line numbers
nnoremap <F2> :call ToggleNumber()<CR>

" }}}

" Searching {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight using ,<space>
nnoremap <leader><space> :nohlsearch<CR>

" }}}

" Folding {{{
set foldenable          " enable folding
set foldlevelstart=99   " open x nested levels at start
set foldnestmax=10      " 10 nested fold max
set foldmethod=syntax   " fold based on syntax

set modelines=1         " last line of file is mode line

" space folds/unfolds
noremap <space><space> za

" }}}

" Leader Shortcuts {{{
let mapleader=","

" toggle gundo
" nnoremap <leader>u :GundoToggle<CR>

" }}}

" call pathogen#infect()                      " use pathogen
" call pathogen#runtime_append_all_bundles()  " use pathogen

" AutoGroups {{{
" augroup configgroup
"   autocmd!
"   autocmd VimEnter * highlight clear SignColumn
"   autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
"               \:call <SID>StripTrailingWhitespaces()
"   autocmd FileType java setlocal list
"   autocmd FileType java setlocal listchars=tab:+\ ,eol:-
"   autocmd FileType java setlocal formatprg=par\ -w80\ -T4
"   autocmd FileType php setlocal expandtab
"   autocmd FileType php setlocal list
"   autocmd FileType php setlocal listchars=tab:+\ ,eol:-
"   autocmd FileType php setlocal formatprg=par\ -w80\ -T4
"   autocmd FileType ruby setlocal tabstop=2
"   autocmd FileType ruby setlocal shiftwidth=2
"   autocmd FileType ruby setlocal softtabstop=2
"   autocmd FileType ruby setlocal commentstring=#\ %s
"   autocmd FileType python setlocal commentstring=#\ %s
"   autocmd BufEnter *.cls setlocal filetype=java
"   autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"   autocmd BufEnter Makefile setlocal noexpandtab
"   autocmd BufEnter *.sh setlocal tabstop=2
"   autocmd BufEnter *.sh setlocal shiftwidth=2
"   autocmd BufEnter *.sh setlocal softtabstop=2
" augroup END

" }}}

" Custom Functions {{{

" toggle between number and relativenumber
function! ToggleNumber()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
  " save last search & cursor position
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/=_s
  call cursor(l, c)
endfunction

" }}}

" vim:foldmethod=marker
