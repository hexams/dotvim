set nocompatible
set encoding=utf-8
set fileencoding=utf-8
let mapleader=","

runtime bundle/tpope_vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

if has("autocmd")
  autocmd BufWritePost .vimrc source $MYVIMRC
endif
nmap <leader>v :edit $MYVIMRC<CR>

let g:indent_guides_auto_colors=1
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_color_change_percent=3
let g:indent_guides_guide_size=0
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
set wrap
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

set showmode
set showcmd
set ruler
set number
map <silent> <leader>n :exec &nu==1 ? "set relativenumber" : "set number"<CR>

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

set history=1000

set backup
set backupdir=~/.vim/backup,~/tmp,/var/tmp,/tmp
set directory=~/.vim/backup,~/tmp,/var/tmp,/tmp

cnoremap %% <C-R>=expand("%:h")."/"<CR>
map <leader>ee :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabedit %%
map <leader>ea :b#<CR>

set completeopt=menu,menuone,longest
set pumheight=10
let g:SuperTabDefaultCompletionType="context"
let g:clang_complete_auto=0
let g:clang_complete_copen=1

set wildignore+=*/.hg/*,*/.svn/*
set wildignore+=*.o,moc_*.cpp,*.exe,*.qm
set wildignore+=.gitkeep,.DS_Store

let g:ctrlp_custom_ignore='\.git$'
let g:ctrlp_root_markers=['Gemfile', 'Rakefile']
let g:ctrlp_max_height=20
nmap <leader>p :CtrlPBuffer<CR>

map <Esc>[A <Up>
map <Esc>[B <Down>
map <Esc>[C <Right>
map <Esc>[D <Left>

set colorcolumn=+1

autocmd CursorHold * checktime

set winwidth=85
set winheight=5
set winminheight=5
set winheight=999

imap jj <esc>

map <Left> :echo "NO!"<cr>
map <Right> :echo "NO!"<cr>
map <Up> :echo "NO!"<cr>
map <Down> :echo "NO!"<cr>

autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <C-w>\ :vsp<cr>
map <C-w>- :sp<cr>

cnoremap w!! w !sudo tee % > /dev/null
