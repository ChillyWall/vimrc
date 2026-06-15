" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'material'
let g:airline#extensions#tabline#buffer_nr_show = 1

set termguicolors

"color scheme
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'
colorscheme material

" tokyonight
set rtp+=~/.vim/plugged/tokyonight.nvim/extras/vim
colorscheme tokyonight
