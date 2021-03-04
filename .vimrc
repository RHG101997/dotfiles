"My vimrc File
"
"By Richard Hernandez

:set nocompatible

"Vim Regular Options
set tabstop=4 softtabstop=4
set shiftwidth=4
set nu
set ignorecase
set smartcase
set scrolloff=8
set relativenumber
set guicursor=
set nowrap
set cursorline
set nohlsearch
set signcolumn=yes
set noerrorbells
set incsearch
set splitbelow splitright
set autoindent
set list lcs=tab:\|\ 
"set clipboard=unnamed

" Toggle using Function Keys
set pastetoggle=<f5> 
nnoremap <F7> :setlocal spell!  spell?<CR>


" Match tag <HTML,XML,etc>
runtime macros/matchit.vim

"Plugins using Plug
call plug#begin('~/.config.nvim/autoload/plugged')
	Plug 'sheerun/vim-polyglot'
	Plug 'scrooloose/NERDTree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'vim-airline/vim-airline'            
	Plug 'vim-airline/vim-airline-themes'
	Plug 'morhetz/gruvbox'
call plug#end()


"Color schema
:colorscheme gruvbox
set background=dark



"Highlight while searhcing and turn off after <Enter>
augroup vimrc-incsearch-highlight
	autocmd!
	autocmd CmdlineEnter /,\? :set hlsearch
	autocmd CmdlineLeave /,\? :set nohlsearch
augroup END



"Adding Shortcuts and Mapping
let mapleader=" "

nnoremap <leader>ff :NERDTree<cr> 


