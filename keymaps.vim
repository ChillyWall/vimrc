" ======= Keybindings for plugin toggle =======
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nmap <F7> :MinimapToggle<CR>
nmap <F8> :TagbarToggle<CR>

" ===== some shortcuts =======
" add a blank line
nmap <CR> o<Esc>
" quit the insert mode
imap jj <Esc>

" add a space
nmap <SPACE> i<SPACE><Esc>l

" switch buffer
nmap H :bp<CR>
nmap L :bn<CR>

" windows jumping
nmap <C-h> <C-w><C-h>
nmap <C-l> <C-w><C-l>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>

" windows moving
nmap <C-S-h> <C-w>H
nmap <C-S-l> <C-w>L
nmap <C-S-j> <C-w>J
nmap <C-S-k> <C-w>K

" escape terminal
tmap <C-[> <C-\><C-n>

let g:mapleader = ';'
let g:maplocalleader = '\'

" 显示键位指导
nnoremap <leader> :WhichKey ';'<CR>
nnoremap g :WhichKey 'g'<CR>
nnoremap <localleader> :WhichKey '\'<CR>

let g:which_key_g_map={}
call which_key#register('g', "g:which_key_g_map")

let g:which_key_leader_map={}
call which_key#register(';', "g:which_key_leader_map")

"======== g ========
let g:which_key_g_map['g'] = "begin of text"
nnoremap gg gg

"========= leader ======
"========= b ========
let g:which_key_leader_map.b={'name': '<leader>b buffer'}
let g:which_key_leader_map.b.d='<leader>bd delete the current buffer'
nmap <leader>bd :bd<CR>

"========== n ==========
let g:which_key_leader_map.n={'name': '<leader>n no or rename'}
let g:which_key_leader_map.n.h = '<leader>nh no highlight'
nmap <leader>nh :nohlsearch<CR>

let g:which_key_leader_map.n.c = '<leader>nc no conceal'
function! ToggleConceal()
    if &conceallevel!=0
        set conceallevel=0
    else
        set conceallevel=2
    endif
endfunction
nmap <leader>nc :call ToggleConceal()<CR>

"========== p ==========
let g:which_key_leader_map.p={'name': '<leader>p paste'}
let g:which_key_leader_map.p.p='<leader>pp paste behind'
let g:which_key_leader_map.p.P='<leader>pP paste ahead'
if has('gui_running')
    nmap <leader>pp "+gp
    nmap <leader>pP "+gP
    vmap <leader>pp "+gp
    vmap <leader>pP "+gP
else
    nmap <leader>pp "+p
    nmap <leader>pP "+P
    vmap <leader>pp "+p
    vmap <leader>pP "+P
endif

"======= q =========
let g:which_key_leader_map.q = {'name': '<leader>q quit/sessions'}
let g:which_key_leader_map.q.q = '<leader>qq quit all'
nmap <leader>qq :qa!<CR>

"========= r ===========
let g:which_key_leader_map.r={'name': '<leader>r refactor'}

"========== t ==========
let g:which_key_leader_map.t={'name': '<leader>t terminal'}

if has('win32') || has('win64')
    let g:which_key_leader_map.t.c='<leader>tc open cmd'
    nmap <leader>tc :rightbelow term cmd<CR>
    let g:which_key_leader_map.t.p='<leader>tp open powershell'
    nmap <leader>tp :rightbelow term powershell<CR>

    let g:which_key_leader_map.t.C='<leader>tC open cmd vertically'
    nmap <leader>tC :vert rightbelow term cmd<CR>
    let g:which_key_leader_map.t.P='<leader>tP open powershell vertically'
    nmap <leader>tP :vert rightbelow term powershell<CR>
elseif has('unix')
    let g:which_key_leader_map.t.b='<leader>eb open bash'
    nmap <leader>tb :rightbelow term bash<Cr>
    let g:which_key_leader_map.t.B='<leader>tB open bash vertically'
    nmap <leader>tB :vert rightbelow term bash<Cr>

    let g:which_key_leader_map.t.z='<leader>tz open zsh'
    nmap <leader>tz :rightbelow term zsh<CR>
    let g:which_key_leader_map.t.Z='<leader>tZ open zsh vertically'
    nmap <leader>tZ :vert rightbelow term zsh<CR>
endif

"====== <tab> ======
let g:which_key_leader_map['<Tab>'] = {'name': "Tab"}
let g:which_key_leader_map['<Tab>'].h='<leader>th previous tab'
nmap <leader><tab>h :tabprev<CR>
let g:which_key_leader_map['<Tab>'].l='<leader>tl next tab'
nmap <leader><tab>l :tabnext<CR>
let g:which_key_leader_map['<Tab>'].d='<leader>tc delete the current tab'
nmap <leader><tab>d :tabc<CR>
let g:which_key_leader_map['<Tab>'].o='<leader>to close all other tabs'
nmap <leader><tab>o :tabo<CR>

"========== w ==========
let g:which_key_leader_map.w={'name': '<leader>w windows'}
let g:which_key_leader_map.w.v= '<leader>wv split to the right'
nmap <leader>wv :vsplit<CR>
let g:which_key_leader_map.w.s= '<leader>ws split to the down'
nmap <leader>ws :split<CR>
let g:which_key_leader_map.w.o='<leader>wo close all other windows'
nmap <leader>wo <c-w>o
let g:which_key_leader_map.w.d='<leader>wd delete the current window'
nmap <leader>wd <c-w>d
"      ==== jump windows ====
let g:which_key_leader_map.w.h='<leader>wh change to the left window'
nmap <leader>wh <c-w>h
let g:which_key_leader_map.w.l='<leader>wl change to the right window'
nmap <leader>wl <c-w>l
let g:which_key_leader_map.w.j='<leader>wj change to the down window'
nmap <leader>wj <c-w>j
let g:which_key_leader_map.w.k='<leader>wk change to the up window'
nmap <leader>wk <c-w>k
"      ===== move windows =====
let g:which_key_leader_map.w.H='<leader>wmh move current window to left'
nmap <leader>wH <c-w>H
let g:which_key_leader_map.w.L='<leader>wml move current window to right'
nmap <leader>wL <c-w>L
let g:which_key_leader_map.w.J='<leader>wmj move current window to down'
nmap <leader>wJ <c-w>J
let g:which_key_leader_map.w.K='<leader>wmk move current window to up'
nmap <leader>wK <c-w>K

"========= y ==========
let g:which_key_leader_map.y="<leader>y yank with clipboard"
nmap <leader>y "+y
vmap <leader>y "+y

