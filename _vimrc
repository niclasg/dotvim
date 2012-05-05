set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle
Bundle 'gmarik/vundle'
"
" Bundles
"
" github repos
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wycats/nerdtree'
Bundle 'ddollar/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'SirVer/ultisnips'
Bundle 'kien/ctrlp.vim'
"

filetype plugin indent on
syntax on

set number
set ruler

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Use modeline overrides
set modeline
set modelines=10

" Remap leader
let mapleader = ","

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Show (partial) command in the status line
set showcmd

" terminal vim
if !has("gui_running")
  set term=screen-256color
  color smyck
endif

" gvim
if has("gui_running")
  set guioptions-=m
  set guioptions-=T
  set guioptions-=L
  set guioptions-=r
  color solarized
  set background=dark
endif

" windows
if has("gui_win32")
  set guifont=Consolas:h10:b
endif

" mac
if has("gui_macvim")
  set guifont=Monaco
endif

" *nix
if has("unix")
endif
