set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Plugin 'Raimondi/delimitMate'
Plugin 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

"-----------------
" Fast navigation
"-----------------
Plugin 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'liuchengxu/vim-which-key'

"--------------
" IDE features
"--------------
" -- NerdTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" -- git
Plugin 'tpope/vim-fugitive'
Plugin 'voldikss/vim-floaterm'
" -- editor
Plugin 'luochen1990/rainbow'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'wfxr/minimap.vim'
Plugin 'yggdroot/indentline'
" -- search
Plugin 'Yggdroot/LeaderF', {'do': ':LeaderfInstallCExtension'}

"-------------
" Other Utils
"-------------

"------- markup language -------
Plugin 'tpope/vim-markdown'
" -- markdown preview
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'

"------- C++ ------------
Plugin 'cdelledonne/vim-cmake'
" -- gtags
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'skywind3000/gutentags_plus'
" -- syntax
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'bfrg/vim-c-cpp-modern'

"--------------
" Color Schemes
"--------------
" -- airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kaicataldo/material.vim'

filetype plugin indent on     " required!
