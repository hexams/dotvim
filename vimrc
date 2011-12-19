set nocompatible
set encoding=utf-8
set fileencoding=utf-8
let mapleader=","

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  nmap <silent> <leader>h :silent :nohlsearch<CR>
endif

set background=dark
colorscheme solarized

filetype on
filetype plugin on
filetype indent on

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

set backspace=indent,eol,start
set nolist
set listchars=tab:▸\ ,eol:¬,trail:·,precedes:«,extends:»
map <leader>l :set list!<CR>

set nopaste
set textwidth=80
set nowrap
command! -nargs=* Wrap set wrap linebreak nolist
set linebreak
set showbreak=…
set sidescroll=5
set scrolloff=5
set formatprg=par\ -TbgqRw80

set autoindent
set smartindent

set ignorecase
set smartcase
set incsearch

set ruler
set number
set relativenumber

set wildmenu
set wildmode=list:longest
set shortmess=atI

set visualbell
set hidden
set title

set nospell
set spelllang=en_us,pt_br
nmap <silent> <leader>s :set spell!<CR>

set backupdir=~/.vim/backup,~/tmp,/var/tmp,/tmp
set directory=~/.vim/backup,~/tmp,/var/tmp,/tmp

nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

cnoremap %% <C-R>=expand("%:h")."/"<CR>
map <leader>ee :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabedit %%

if has("autocmd")
  autocmd BufWritePost .vimrc source $MYVIMRC
endif
nmap <leader>v :tabedit $MYVIMRC<CR>
