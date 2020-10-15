"
" ~/.vimrc
" Jacob Hoffman-Andrews
"
version 4.0
set tildeop
"set nosmartindent
set nocp
set showcmd
set tw=80
set sw=2
set tabstop=2
set viminfo="~/.viminfo"
set expandtab
set smarttab
set autoindent
set ignorecase
set smartcase
set list listchars=tab:»·,trail:·

set tags=./tags;/
" Automatically cd into the directory that the file is in
set autochdir

syntax on
set t_Co=256

set background=light
colorscheme solarized

if &diff
  set diffopt+=iwhite
  " Set no swapfile so we don't get warned if we start editing.
  set updatecount=0
  map n ]czz
  map p [czz
  map q :qa<CR>
  map Q :cquit<CR>
  " XXX this doesn't work. :(
  if expand("%") == "/dev/null"
    wincmd l
  endif
endif

syntax sync minlines=2000

set path=~/go/packages/src,~/go/src
map <F3> :w:GoImports:GoBuild
map <F4> :GoImports
map <F5> :w:GoTest
map <F6> :w:GoRun
map <F9> :cn

let g:go_metalinter_enabled=[ 'staticcheck']
