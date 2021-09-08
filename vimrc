" vim mode
set nocompatible
set encoding=utf-8
set fileencoding=utf-8

"remap leader ASAP
let mapleader=","

" run pathogen for plugins insjection
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" Settings
filetype on
filetype plugin on
filetype indent on

" Indent options
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
set cindent
set smartindent

" Search options
set ignorecase
set smartcase
set incsearch

" Text rendering options
set linebreak
"set scrolloff=5
"set sidescroll=5
"set nowrap

" User interface options
set laststatus=2
set ruler
set wildmenu
set wildmode=list:longest
set number
set mousehide
set mouse=a
set ttymouse=xterm2
set title
"set visualbell
set nolist
"set showbreak=…
"set formatprg=par\ -TbgqRw80
set showmatch
set matchtime=2
set showmode
set showcmd
"set cursorline
"set cursorcolumn
set colorcolumn=80
"set textwidth=80
"set listchars=tab:▸\ ,eol:¬,trail:·,precedes:«,extends:»

" Miscellaneous
set autoread
set backspace=indent,eol,start
set nobackup
"set backupdir=~/.vim/backup,/tmp,/var/tmp
"set directory=~/.vim/swap,/tmp,/var/tmp
set hidden
set history=100
set nospell
set spelllang=en_us,pt_br
set wildignore+=*.o,*.out,*.obj,*.pyc,*.rbc,*.rbo,*.gem,*.class
set wildignore+=.git,.svn,.hg
set wildignore+=*.zip,*.rar,*.tar.xz,*.tar.bz2,*.tar.gz
set nopaste

set shortmess=atI
set timeoutlen=500
set completeopt=menu,menuone,longest
set pumheight=15
set winwidth=85
set winheight=50
set winminheight=5
set winheight=999

" Colors
if &t_Co > 2 || has("gui_running")
  "set guioptions-=T
  set background=dark
  colorscheme solarized

  "let g:solarized_termtrans=1
  "let g:solarized_termcolors=256
  set guifont=Inconsolata-dz\ dz\ 14

  set hlsearch
  syntax enable
endif

" Functions
function! s:setupWrapping()
  set wrap
  set linebreak
  set colorcolumn=72
  "set textwidth=72
  set nolist
endfunction

" Auto commands
if has("autocmd")
  autocmd BufWritePost .vimrc source $MYVIMRC
  autocmd CursorHold * checktime
  autocmd FileType {make,python,c,cpp} set noexpandtab
  autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,config.ru,*.rake} set filetype=ruby
  autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} set filetype=markdown | call s:setupWrapping()
  autocmd BufRead,BufNewFile *.json set filetype=javascript
  autocmd BufRead,BufNewFile *.vue,*.wpy set filetype=vue
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
endif

"" plugins configuration
"let g:indent_guides_auto_colors=1
"let g:indent_guides_enable_on_vim_startup=0
"let g:indent_guides_color_change_percent=3
"let g:indent_guides_guide_size=0
"let g:clang_complete_auto=0
"let g:clang_complete_copen=1
"let g:clang_use_library=1
"let g:syntastic_cpp_config_file=".clang_complete"
"let g:syntastic_cpp_compiler="clang"
"let g:ctrlp_custom_ignore='\.git$\|build$\|vendor\|node_modules$'
"let g:ctrlp_root_markers=['Gemfile', 'Rakefile']
"let g:ctrlp_max_height=20
"let g:slime_target="tmux"
"let g:Powerline_symbols="fancy"
"
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'powerlineish'
"let g:airline_left_sep = '⮀'
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"let g:airline_symbols.colnr = '  ㏇:'
let g:airline_symbols.colnr = '  ℅:'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.linenr = ' ␊:'
"let g:airline_symbols.linenr = ' ␤:'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.maxlinenr = '㏑'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = 'Ɇ'
"let g:airline_symbols.whitespace = 'Ξ'

"" bindings
"cnoremap %% <C-R>=expand("%:h")."/"<CR>
"cnoremap w!! w !sudo tee % > /dev/null
"
"" map <Esc>[A <Up>
"" map <Esc>[B <Down>
"" map <Esc>[C <Right>
"" map <Esc>[D <Left>
"" map <Down> :echo "NO!"<CR>
"" map <Left> :echo "NO!"<CR>
"" map <Right> :echo "NO!"<CR>
"" map <Up> :echo "NO!"<CR>
"
"imap jj <ESC>
"nmap <leader>ee :e %%
"nmap <leader>es :sp %%
"nmap <leader>et :tabedit %%
"nmap <leader>ev :vsp %%
"nmap \\\ gcc
"vmap \\ gc
"
""nmap <silent> <leader>d <Plug>DashSearch
"
"noremap <leader>y "*y
"noremap <leader>yy "*Y
"vmap <D-c> "*y
"noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>
"
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l
"nnoremap <C-w>- :sp<CR>
"nnoremap <C-w>\ :vsp<CR>
"nnoremap <leader>. :b#<CR>
"nnoremap <leader>h :nohlsearch<CR>
"nnoremap <leader>i :IndentGuidesToggle<CR>
"nnoremap <leader>l :set list!<CR>
"nnoremap <leader>s :set spell!<CR>
nnoremap <leader>v :edit $MYVIMRC<CR>
"nnoremap <C-Left> <C-w>h
"nnoremap <C-Down> <C-w>j
"nnoremap <C-Up> <C-w>k
"nnoremap <C-Right> <C-w>l
"
""map <leader>f :TagbarToggle<CR>
""set tags+=gems.tags
"
"map <leader>w :w \|:CoffeeCompile <cr><esc><C-w><C-h>
"map <leader>pp :r!pbpaste<CR>
map <leader>c :set number!<CR>
"
"if filereadable(expand(".vimrc.local"))
"  source .vimrc.local
"endif
