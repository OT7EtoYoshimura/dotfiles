call plug#begin(system('echo -n "${XDG_CONFIG_HOME}/nvim/plugged"'))
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'p00f/nvim-ts-rainbow'
call plug#end()

syntax on
colorscheme slate
filetype plugin on
set nocompatible
" set spell
set autoindent smartindent wrap
set noexpandtab
set tabstop=8
set shiftwidth=8
set softtabstop=8
set termguicolors
set number relativenumber
set title
set go=a
set mouse=a
set clipboard+=unnamedplus
set showmode
set ruler
set laststatus=2
set showcmd
set encoding=utf-8
set splitbelow
set splitright
set wildmenu
set cursorline
set incsearch
set ignorecase smartcase
set hlsearch
set lazyredraw
set magic
set noshowmatch
set noerrorbells novisualbell
set list
set lbr tw=500
set textwidth=80
set colorcolumn=80
set keywordprg=:vertical\ Man
set path+=**
set complete=.,w,b,u,t,i

" set tags+=~/uni/sem4/tags
" set tags+=~/.local/share/tags/erltags
" set tags+=~/.local/share/tags/glibc
" set tags+=~/.local/share/tags/json-c
" set tags+=~/.local/share/tags/libgit2
" set tags+=~/.local/share/tags/xorgproto
" set tags+=~/.local/share/tags/sdl2-image-mixer-ttf
" set tags+=~/.local/share/tags/sqlite
" set tags+=~/.local/share/tags/stb
" set tags+=~/.local/share/tags/racket
" set tags+=~/.local/share/tags/graphviz
" set tags+=~/.local/share/tags/glfw
" set tags+=~/.local/share/tags/nuklear

au BufReadPost *.smt set syntax=lisp

" Snippets
nnoremap <LEADER>tx :-1read $HOME/.config/nvim/.snippet.xhtml<CR>}4kzzwf>a
nnoremap <LEADER>tc :-1read $HOME/.config/nvim/.snippet.c<CR>6jzzA
nnoremap <LEADER>tms :-1read $HOME/.config/nvim/.snippet.ms<CR>:set syntax=groff<CR>2}zzi
nnoremap <LEADER>tmk :-1read $HOME/.config/nvim/.snippet.mk<CR>12jA

nnoremap <LEADER>w :w!<cr>
nnoremap <LEADER>b :ls<cr>:b<Space>
nnoremap <silent> <LEADER><space> :noh<cr>
nnoremap } }zz
nnoremap { {zz
nnoremap <C-b> <C-b>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-J> :s/\s\+/\r/<CR>

function! TreeSitterConf()
lua << EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = {
	  "c", "vim", "lua", "erlang", "scheme", "commonlisp",
	  "haskell", "elm", "php", "zig", "python", "html", "ocaml"
	},
	sync_installed = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	}
}
EOF
endfunction
call TreeSitterConf()
