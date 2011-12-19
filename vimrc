set nocompatible
set encoding=utf-8
set fileencoding=utf-8
let mapleader=","

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
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
set listchars=tab:▸\ ,eol:¬,trail:·,precedes:»,extends:…
map <leader>l :set list!<CR>

set autoindent
set smartindent

set ignorecase
set incsearch
set smartcase

set ruler
set number
set relativenumber

set visualbell
set hidden
