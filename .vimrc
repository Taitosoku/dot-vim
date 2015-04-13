execute pathogen#infect()
highlight clear SignColumn

" set number
set textwidth=80
set tabstop=2
set shiftwidth=2
set expandtab
set spell
set nowrap
set number

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
"let Vundle manage Vundle
"required! 
Bundle 'gmarik/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
 
filetype plugin indent on " required!

set laststatus=2
set visualbell t_vb=

set background=dark
syntax on

" only give me powerline, large fonts, etc if I'm using macvim.
if has('gui_running')
  set guifont=Menlo\ Regular:h15
  set guioptions=egmrt
endif

colorscheme solarized
let g:Powerline_symbols = 'fancy'

let &colorcolumn="80,".join(range(120,999),",")

" backup related stuff
set autowrite
set nobackup

" backup to ~/.tmp 
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
