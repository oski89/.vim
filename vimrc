""" Vim plugins

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'scrooloose/nerdtree'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'ervandew/supertab'
"Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-fugitive'
Plug 'tmhedberg/SimpylFold'
Plug 'Raimondi/delimitMate'
Plug 'kien/ctrlp.vim'
"Plug '~/.vim/plugged/YouCompleteMe'

call plug#end()

"""

""" Color scheme

colorscheme sublimemonokai
let g:sublimemonokai_term_italic = 1
let g:monokai_gui_italic = 1
"set termguicolors
"set t_Co=256

"""

""" Basic Settings

set guifont=Cousine\ for\ Powerline:h12 
set shell=/bin/bash
set nocompatible
set ttimeoutlen=10
set modelines=0
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set softtabstop=4
set textwidth=79
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set fileformat=unix
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set noshowmode
set relativenumber
set noundofile
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set nowrap
set fo-=t
set linebreak
set nolist
set formatoptions=qrn1
set colorcolumn=80
set tabpagemax=100
set noswapfile
set nobackup
set nowritebackup
set history=700
set undolevels=700

"""

""" Mappings

" Bind Alt + o for new line
inoremap œ <ESC>o
inoremap Œ <ESC>O

" Easier BOL and EOL
nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $

" Insert mode completion
inoremap <C-f> <C-x><C-f>
inoremap <C-]> <C-x><C-]>
inoremap <C-l> <C-x><C-l>

" I hate pressing ESC
inoremap kjdf <ESC>

" Remap Y to work like C and D
nnoremap Y y$

" Unmap K
nnoremap K <nop>

" Folding
vnoremap <space> zf
nnoremap <space> za
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Indentation
vnoremap < <gv
vnoremap > >gv

" Search
nnoremap / /\v
vnoremap / /\v

" Match parens
nnoremap <tab> %
vnoremap <tab> %

" Wrap paragraphs
vmap Q gq
nmap Q gqap

" Unbind arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"""

""" Leader commands

" Comma as leader key
let mapleader = ","

" Edit important files
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>eb :vsplit ~/.bash_profile<CR>

" Switch tabs
nnoremap <leader>n gT
nnoremap <leader>m gt

" Write/quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>

" Sorting
" vnoremap <leader>s :sort<CR>

" Substitute
nnoremap <leader>s :%s/
vnoremap <leader>s :s/

" Run python2 script
nnoremap <leader>P :w<CR>:!python ./%<CR>
vnoremap <leader>P :w!<CR>:!python ./%<CR>

" Run python3 script
nnoremap <leader>p :w<CR>:!python3 ./%<CR>
vnoremap <leader>p :w!<CR>:!python3 ./%<CR>

"""

""" Plugins

""" Airline

let g:airline_theme = 'deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

"""

""" Nerdtree

map <C-n> :NERDTreeToggle<CR>

"""

"""

""" Misc

" Autoreloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Toggle search highlighting
let hlstate=0
nnoremap <silent><expr> <leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

"""
