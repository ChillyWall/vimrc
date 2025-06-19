let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.ilk$', '\.obj$', '\.pdb$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"

let g:which_key_leader_map.e={'name': '<leader>e NERDTreeToggle'}
nmap <leader>e :NERDTreeToggle<cr>

