"======= gtags with gutentags ========
let $GTAGSLAVEL='native-gtags'
let $GTAGSCONF='/usr/share/gtags/gtags.conf'
let g:gutentags_project_root = ['.git', '.catkin_workspace', '.vscode']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif
" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/LeaderF/gtags 目录中，避免污染工程目录
" 配置 ctags 的参数，老的 Exuberant-ctags 不能有 --extra=+q，注意
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 如果使用 universal ctags 需要增加下面一行，老的 Exuberant-ctags 不能加下一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
" disable all maps
let g:gutentags_plus_nomap = 1

" Keybindings
let g:which_key_leader_map.s={'name': '<leader>s GscopeFind'}
let g:which_key_leader_map.s.s='<leader>ss find symbol'
nmap <silent> <leader>ss <Plug>GscopeFindSymbol
let g:which_key_leader_map.s.g='<leader>sg find definition'
nmap <silent> <leader>sg <Plug>GscopeFindDefinition
let g:which_key_leader_map.s.t='<leader>st find text'
nmap <silent> <leader>st <Plug>GscopeFindText
let g:which_key_leader_map.s.c='<leader>sc find functions calling this function'
nmap <silent> <leader>sc <Plug>GscopeFindCallingFunc
let g:which_key_leader_map.s.d='<leader>sd find functions called by this function'
nmap <silent> <leader>sd <Plug>GscopeFindCalledFunc
let g:which_key_leader_map.s.f='<leader>sf find this file'
nmap <silent> <leader>sf <Plug>GscopeFindFile
let g:which_key_leader_map.s.e='<leader>se find egrep'
nmap <silent> <leader>se <Plug>GscopeFindEgrep
let g:which_key_leader_map.s.a='<leader>sa find places where this symbol is assigned a value'
nmap <silent> <leader>sa <Plug>GscopeFindAssign
let g:which_key_leader_map.s.i='<leader>si find files #including this file '
nmap <silent> <leader>si <Plug>GscopeFindInclude
let g:which_key_leader_map.s.z='<leader>sz find ctag'
nmap <silent> <leader>sz <Plug>GscopeFindCtag
let g:which_key_leader_map.s.k='<leader>sk GscopeKill'
nmap <silent> <leader>sk :GscopeKill<cr>

