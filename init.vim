:set nocompatible

filetype off

syntax on

set splitbelow splitright
set relativenumber
set scrolloff=8
set guicursor=
set nowrap
set incsearch
set nu
set noerrorbells
set signcolumn=yes
set nohlsearch
set cursorline

call plug#begin('~/.config.nvim/autoload/plugged')
	"Better Syntax Support
	Plug 'sheerun/vim-polyglot'
	"File Explorer
	Plug 'scrooloose/NERDTree'
	"Auto pairs
	Plug 'jiangmiao/auto-pairs'
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'vim-airline/vim-airline'            
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

"Theme for airline
:AirlineTheme murmur

let mapleader=" "

 " Using lua functions
 nnoremap <leader>ff :lua require('telescope.builtin').find_files()<cr>
 nnoremap <leader>fg :lua require('telescope.builtin').live_grep()<cr>
 nnoremap <leader>fb :lua require('telescope.builtin').buffers()<cr>
 nnoremap <leader>fh :lua require('telescope.builtin').help_tags()<cr>
 
