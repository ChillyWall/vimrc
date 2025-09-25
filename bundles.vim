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
" -- NerdTree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" -- git
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'
" -- editor
Plug 'luochen1990/rainbow'
Plug 'bronson/vim-trailing-whitespace'
Plug 'wfxr/minimap.vim'
Plug 'yggdroot/indentline'
" -- search
Plug 'Yggdroot/LeaderF', {'do': ':LeaderfInstallCExtension'}

"-------------
" Other Utils
"-------------

"------- markup language -------
Plug 'tpope/vim-markdown'
" -- markdown preview
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

"------- C++ ------------
Plug 'cdelledonne/vim-cmake'
" -- gtags
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
" -- syntax
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bfrg/vim-c-cpp-modern'

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
