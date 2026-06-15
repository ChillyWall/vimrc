set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin()

"------------------
" File Management
"------------------
Plug 'lambdalisue/vim-fern'
Plug 'lambdalisue/vim-fern-git-status'
Plug 'lambdalisue/vim-nerdfont'
Plug 'lambdalisue/vim-fern-renderer-nerdfont'

"-----------------
" Fast navigation
"-----------------
Plug 'easymotion/vim-easymotion'

"--------------
" Fast editing
"--------------
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'liuchengxu/vim-which-key'
Plug 'Raimondi/delimitMate'
Plug 'bronson/vim-trailing-whitespace'
Plug 'yggdroot/indentline'

"-------------
" Git
"-------------
Plug 'tpope/vim-fugitive'

"-------------
" Terminal
"-------------
Plug 'voldikss/vim-floaterm'

"--------------
" Color Schemes
"--------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'folke/tokyonight.nvim'

call plug#end()

filetype plugin indent on     " required!
