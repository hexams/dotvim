set nocompatible
set encoding=utf-8
set fileencoding=utf-8
let mapleader=","

runtime bundle/tpope_vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

if has("autocmd")
  autocmd BufWritePost .vimrc source $MYVIMRC
endif
nmap <leader>v :tabedit $MYVIMRC<CR>

let g:statusline_fugitive = 1
let g:statusline_rvm = 0
let g:statusline_syntastic = 0
let g:statusline_fullpath = 0

let g:fuf_modesDisable=['mrucmd']
nnoremap <leader>ff :FufFile<CR>
nnoremap <leader>fm :FufMruFile<CR>
nnoremap <leader>fb :FufBuffer<CR>

let g:indent_guides_auto_colors = 1
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_color_change_percent = 3
let g:indent_guides_guide_size = 0
noremap <leader>i :IndentGuidesToggle<CR>

if &t_Co > 2 || has("gui_running")
  set guioptions-=T
  set background=dark
  colorscheme solarized
  syntax enable
  set hlsearch
  nmap <silent> <leader>h :silent :nohlsearch<CR>
endif

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

set cindent
set autoindent
set smartindent

set ignorecase
set smartcase
set incsearch

set showmatch
set matchtime=2

set ruler
set number
set relativenumber

set mousehide
set mouse=a

set autoread
set wildmenu
set wildmode=list:longest
set shortmess=atI
set timeoutlen=500

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
map <leader>ea :b#<CR>
