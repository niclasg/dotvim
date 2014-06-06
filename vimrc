" niclasg vim config - https://github.com/niclasg/dotvim

" General "{{{
  set nocompatible  " disable vi compatibility.

  set nowritebackup  " disable backup
  set nobackup  " disable backup

  set hlsearch  " highlight search
  set ignorecase  " ignore case
  set smartcase  " unless uppercase in search

  set modeline  " enable modeline
  set modelines=10  " default number of lines to read for modeline instructions
" "}}}


" Formatting "{{{
  set encoding=utf-8  " set default to utf-8

  set nowrap   " no wraps please
  set wildmode=list:longest,list:full  " tab-complete longest common and show rest as list
  set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*  " tab-complete ignore

  set tabstop=2  " default tabstop
  set softtabstop=2  " default softtabstop
  set shiftwidth=2  " default shiftwidth for indents
  set expandtab  " make tabs into spaces
" "}}}


" Visual "{{{
  set number  " display linenumbers

  set laststatus=2  " always show status lune
  set list listchars=tab:\ \ ,trail:·  " unprintable chars mapping

  if has("gui_running")  " if running gvim
    set guioptions-=m  " remove menu bar
    set guioptions-=T  " remove toolbar
    set guioptions-=L  " remove left-hand scrollbar
    set guioptions-=r  " remove right-hand scrollbar
  else  " terminal vim
    set term=screen-256color  " set terminal
  endif
" "}}}

" Key mappings " {{{
  let mapleader = ","  " remap leader

  nmap <C-Up> ddkP  " bubble single line up
  nmap <C-Down> ddp  " bubble single line down
  vmap <C-Up> xkP`[V`]  " bubble multiple lines up
  vmap <C-Down> xp`[V`]  " bubble multiple lines down

  map <Leader>n :NERDTreeToggle<CR>
" "}}}


" Plugins " {{{
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  Bundle 'gmarik/vundle'

  " Sensible defaults
  Bundle 'tpope/vim-sensible'

  " Snippets
  Bundle 'SirVer/ultisnips'

  " Git integration
  Bundle 'tpope/vim-fugitive'

  " Utility
  Bundle 'tpope/vim-surround'
  Bundle 'ervandew/supertab'
  Bundle 'bling/vim-airline'
  Bundle 'kien/ctrlp.vim'
  Bundle 'ddollar/nerdcommenter'
  let g:airline#extensions#tabline#enabled = 1

  " Color themes
  Bundle 'altercation/vim-colors-solarized'

  " NERDTree
  Bundle 'wycats/nerdtree'
  let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']

" " }}}

" Colors and Fonts " {{{
  if has("gui_running")  " if running gvim
    color solarized  " set colorscheme for gvim
    set background=dark  " set light/dark
  else  " terminal vim
    color smyck256  " set colorscheme for vim
  endif

  if has("gui_win32")  " windows
    set guifont=Consolas:h10:b  " font
  endif

  if has("gui_macvim")  " mac
    set guifont=Monaco  " font
  endif

  if has("unix")  "*nix
    set guifont=Ubuntu\ Mono  " font
  endif
" " }}}
