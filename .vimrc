syntax on
set incsearch
set number
set hlsearch
set backspace=2

set tags+=~/.vim/tags/tags

filetype plugin on
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

let php_sql_query=1
let php_htmlInStrings=1
set background=dark
colorscheme desert
set ft=sql

set list
set lcs=tab:>-,trail:-
set tabstop=4
set expandtab
set shiftwidth=4

if &diff "if we are doing a diff use this stuff too
    set background=dark
    colorscheme mydesert
    set number
   "hide whitespace changes
    set diffopt+=iwhite
    set diffexpr=""
endif

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
