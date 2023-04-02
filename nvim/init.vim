call plug#begin(system('echo -n "${XDG_CONFIG_HOME}/nvim/plugged"'))
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
call plug#end()

syntax on
colorscheme slate
set nocompatible
set autoindent smartindent wrap
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set termguicolors
set number relativenumber
set title
set bg=light
set go=a
set mouse=a
set clipboard+=unnamedplus
set showmode
set ruler
set laststatus=2
set showcmd
set encoding=utf-8
set splitbelow splitright
set wildmenu
set cursorline
set incsearch
set ignorecase smartcase
set hlsearch
set lazyredraw
set magic
set noshowmatch
set noerrorbells novisualbell
set lbr tw=500
set tags+=~/.local/share/tags/ctags,~/.local/share/tags/erltags,~/.local/share/tags/xtags

nnoremap <LEADER>w :w!<cr>
nnoremap <LEADER>t :NERDTree<cr>
nnoremap <LEADER>b :ls<cr>:b<Space>
nnoremap <LEADER>nt :NERDTreeClose<cr>
nnoremap <LEADER>cc :set colorcolumn=80<cr>
nnoremap <LEADER>ncc :set colorcolumn-=80<cr>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
