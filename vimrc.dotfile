" vim mode
set nocompatible
set encoding=utf-8
set fileencoding=utf-8

" remap leader ASAP
let mapleader=","

" run pathogen for plugins insjection
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" settings
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
set nopaste
set textwidth=80
set nowrap
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
set mousehide
set mouse=a
set ttymouse=xterm2
set autoread
set wildmenu
set wildmode=list:longest
set wildignore+=*.o,*.out,*.obj,*.pyc,*.rbc,*.rbo,*.gem,*.class
set wildignore+=.git,.svn,.hg
set wildignore+=*.zip,*.rar,*.tar.xz,*.tar.bz2,*.tar.gz
set shortmess=atI
set timeoutlen=500
set visualbell
set hidden
set title
set nospell
set spelllang=en_us,pt_br
set history=100
set backup
set backupdir=~/.vim/backup,/tmp,/var/tmp
set directory=~/.vim/swap,/tmp,/var/tmp
set completeopt=menu,menuone,longest
set pumheight=15
set colorcolumn=+1
set winwidth=85
set winheight=5
set winminheight=5
set winheight=999
set laststatus=2
set statusline=%f\ %m\ %r
set statusline+=\ Line:%l/%L[%p%%]
set statusline+=\ Col:%v
set statusline+=\ Buf:#%n
set statusline+=\ [%b][0x%B]
set statusline+=\ %{fugitive#statusline()}

" colors
if &t_Co > 2 || has("gui_running")
  set guioptions-=T
  set background=dark
  colorscheme solarized
  syntax enable
  set hlsearch
endif

" functions
function! s:setupWrapping()
  set wrap
  set linebreak
  set textwidth=72
  set nolist
endfunction

" auto commands
if has("autocmd")
  autocmd BufWritePost .vimrc source $MYVIMRC
  autocmd CursorHold * checktime
  autocmd FileType {make,python,c,cpp} set noexpandtab
  autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,config.ru,*.rake} set filetype=ruby
  autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} set filetype=markdown | call s:setupWrapping()
  autocmd BufRead,BufNewFile *.json set filetype=javascript
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
endif

" plugins configuration
let g:indent_guides_auto_colors=1
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_color_change_percent=3
let g:indent_guides_guide_size=0
let g:clang_complete_auto=0
let g:clang_complete_copen=1
let g:clang_use_library = 1
let g:syntastic_cpp_config_file=".clang_complete"
let g:syntastic_cpp_compiler="clang"
let g:ctrlp_custom_ignore='\.git$\|build$\|vendor\|node_modules$'
let g:ctrlp_root_markers=['Gemfile', 'Rakefile']
let g:ctrlp_max_height=20
let g:slime_target = "tmux"

" bindings
cnoremap %% <C-R>=expand("%:h")."/"<CR>
cnoremap w!! w !sudo tee % > /dev/null

map <Down> :echo "NO!"<CR>
map <Esc>[A <Up>
map <Esc>[B <Down>
map <Esc>[C <Right>
map <Esc>[D <Left>
map <Left> :echo "NO!"<CR>
map <Right> :echo "NO!"<CR>
map <Up> :echo "NO!"<CR>

imap jj <ESC>
nmap <leader>ee :e %%
nmap <leader>es :sp %%
nmap <leader>et :tabedit %%
nmap <leader>ev :vsp %%
nmap \\\ gcc
vmap \\ gc

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-w>- :sp<CR>
nnoremap <C-w>\ :vsp<CR>
nnoremap <leader>. :b#<CR>
nnoremap <leader>h :nohlsearch<CR>
nnoremap <leader>i :IndentGuidesToggle<CR>
nnoremap <leader>l :set list!<CR>
nnoremap <leader>s :set spell!<CR>
nnoremap <leader>v :edit $MYVIMRC<CR>

if filereadable(expand(".vimrc.local"))
  source .vimrc.local
endif
