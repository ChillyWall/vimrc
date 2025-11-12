set nocompatible               " be iMproved
filetype off                   " required!

call plug#begin()

"------------------
" Code Completions
"------------------
Plug 'Raimondi/delimitMate'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

"--------------
" IDE features
"--------------
" -- git
Plug 'tpope/vim-fugitive'
" -- floaterm
Plug 'voldikss/vim-floaterm'
" -- editor
Plug 'luochen1990/rainbow'
Plug 'bronson/vim-trailing-whitespace'
Plug 'wfxr/minimap.vim'
Plug 'yggdroot/indentline'
" -- search
Plug 'Yggdroot/LeaderF', {'do': ':LeaderfInstallCExtension'}
" -- Fern
Plug 'lambdalisue/vim-fern'
Plug 'lambdalisue/vim-fern-git-status'
Plug 'lambdalisue/vim-nerdfont'
Plug 'lambdalisue/vim-fern-renderer-nerdfont'
"-------------
" Other Utils
"-------------

"------- markup language -------
Plug 'tpope/vim-markdown'
" -- markdown preview
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

"------- gtags --------
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

"------- C++ ------------
" -- syntax
Plug 'bfrg/vim-c-cpp-modern'
" --cmake
Plug 'pboettch/vim-cmake-syntax'
Plug 'cdelledonne/vim-cmake'

"--------------
" Color Schemes
"--------------
" -- airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'folke/tokyonight.nvim'

Plug 'lervag/vimtex'

call plug#end()

filetype plugin indent on     " required!
