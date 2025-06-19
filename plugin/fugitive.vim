" Keybindings
let g:which_key_leader_map.g={'name': '<leader>g git (fugitive)'}
let g:which_key_leader_map.g.a={'name': '<leader>ga git add'}
let g:which_key_leader_map.g.a.a='<leader>gA git add all'
nmap <leader>gA :G add .<CR>
let g:which_key_leader_map.g.a.f='<leader>ga git add specified file'
nmap <leader>ga :G add<SPACE>
let g:which_key_leader_map.g.c='<leader>gc git commit with message'
nmap <leader>gc :G commit -m<SPACE>
let g:which_key_leader_map.g.p='<leader>gp pull'
nmap <leader>gp :G pull<SPACE>
let g:which_key_leader_map.g.P='<leader>gps push'
nmap <leader>gP :G push<SPACE>
let g:which_key_leader_map.g.s='<leader>gs git status'
nmap <leader>gs :G status<CR>
let g:which_key_leader_map.g.l='<leader>gl git log with graph'
nmap <leader>gl :G log --graph<CR>
let g:which_key_leader_map.g.b={'name': '<leader>gb git branch'}
let g:which_key_leader_map.g.b.l='<leader>gbl list all branches'
nmap <leader>gbl :G branch -a<CR>
let g:which_key_leader_map.g.b.c='<leader>gbc checkout (branch)'
nmap <leader>gbc :G checkout<SPACE>
let g:which_key_leader_map.g.b.d='<leader>gbd delete branch'
nmap <leader>gbd :G branch -d<SPACE>
let g:which_key_leader_map.g.b.m='<leader>gbm merge branch'
nmap <leader>gbm :G merge<SPACE>
let g:which_key_leader_map.g.b.r='<leader>gbr rebase branch'
nmap <leader>gbr :G rebase<SPACE>
let g:which_key_leader_map.g.r={'name': '<leader>gr reset or restore'}
let g:which_key_leader_map.g.r.f='<leader>grs restore file'
nmap <leader>grf :G restore<SPACE>
let g:which_key_leader_map.g.r.h='<leader>gre reset to HEAD'
nmap <leader>grh :G reset<SPACE>
let g:which_key_leader_map.g.f='<leader>lf git fetch'
nmap <leader>gf :G fetch<CR>


