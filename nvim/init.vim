call plug#begin(system('echo -n "${XDG_CONFIG_HOME}/nvim/plugged"'))
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'p00f/nvim-ts-rainbow'
Plug 'jpe90/export-colorscheme.nvim'
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
digraph ll 8888 " ⊸

" Snippets
nnoremap <leader>tx :-1read $HOME/.config/nvim/.snippet.xhtml<cr>}4kzzwf>a
nnoremap <leader>tc :-1read $HOME/.config/nvim/.snippet.c<cr>6jzzA
nnoremap <leader>tms :-1read $HOME/.config/nvim/.snippet.ms<cr>:set syntax=groff<cr>11jzzi
nnoremap <leader>tmk :-1read $HOME/.config/nvim/.snippet.mk<cr>12jA

nnoremap <leader>w :w!<cr>
nnoremap <leader>b :ls<cr>:b<space>
nnoremap <silent> <leader><space> :noh<cr>
nnoremap K f r<cr>
nnoremap } }zz
nnoremap { {zz
nnoremap <c-b> <c-b>zz
nnoremap <c-f> <c-f>zz
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

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
