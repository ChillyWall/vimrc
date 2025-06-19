" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'material'
let g:airline#extensions#tabline#buffer_nr_show = 1
" - airline-coc
let g:airline#extensions#coc#enabled=1
let g:airline#extensions#coc#show_coc_status=1
" - airline-cmake
let g:airline#extensions#vimcmake#enabled = 1
" - airline-gutentags
let g:airline#extensions#gutentags#enabled = 1
" - airline-tagbar
let g:airline#extensions#tagbar#enabled = 1

set termguicolors

"color scheme
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'
colorscheme material

" tokyonight
set rtp+=~/.vim/bundle/tokyonight.nvim/extras/vim
colorscheme tokyonight
