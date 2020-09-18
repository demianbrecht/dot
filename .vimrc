execute pathogen#infect()

"--------------------------------------------------------
" general 
"--------------------------------------------------------
set nocompatible
filetype on
filetype plugin on
filetype indent on

set nobackup
set noswapfile
let mapleader = ','

set noerrorbells
autocmd! GUIEnter * set vb t_vb=

" status 
set ls=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" general
set background=dark
colorscheme iceberg
set tabstop=4
set shiftwidth=4
set showmatch
set number
set smarttab
set linebreak
set nowrap
set autoindent
syntax enable

" rfc
au BufRead,BufNewFile *.rfc set filetype=rfc
autocmd Filetype rfc setlocal textwidth=72 softtabstop=3 tabstop=3 shiftwidth=3

" yaml
autocmd Filetype yaml setlocal expandtab textwidth=99 softtabstop=2 tabstop=2 shiftwidth=2

" python
set expandtab
autocmd Filetype python,rst setlocal expandtab textwidth=119 softtabstop=4
"autocmd BufWritePost *.py call Flake8()

" markdown
au BufRead,BufNewFile *.md set filetype=markdown
autocmd Filetype markdown setlocal textwidth=80

" rst
au BufRead,BufNewFile *.rst set filetype=rst
autocmd Filetype rst setlocal softtabstop=3 tabstop=3 shiftwidth=3execute pathogen#infect()

hi Normal ctermbg=NONE
hi EndOfBuffer ctermbg=NONE
