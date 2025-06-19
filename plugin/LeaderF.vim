" ======= LeaderF =========
let g:Lf_WindowPosition = 'popup'

" gtags
let g:Lf_GtagsAutoGenerate=0
let g:Lf_GtagsGutentags=1
let g:Lf_CacheDirectory=expand('~/.cache')
let g:gutentags_cache_dir = expand(g:Lf_CacheDirectory.'/LeaderF/gtags')
let g:Lf_Gtagslabel='native-pygments'
let g:Lf_Gtagsconf='C:/Users/metal/local/global/share/gtags/gtags.conf'

" Keybindings
let g:which_key_leader_map.l={'name': '<leader>l LeaderF'}
let g:which_key_leader_map.l.f='<leader>lf search files'
let g:Lf_ShortcutF='<leader>lf'
let g:which_key_leader_map.l.b='<leader>lb search buffers'
let g:Lf_ShortcutB='<leader>lb'
let g:which_key_leader_map.l.C='<leader>lC switch between colorscheme'
noremap <silent> <leader>lC :LeaderfColorscheme<CR>
let g:which_key_leader_map.l.c='<leader>lc search command'
noremap <silent> <leader>lc :LeaderfCommand<CR>
let g:which_key_leader_map.l.w='<leader>lw search windows'
noremap <silent> <leader>lw :LeaderfWindow<CR>
let g:which_key_leader_map.l.q='<leader>lq navigate quickfix'
noremap <silent> <leader>lq :LeaderfQuickFix<CR>
" LeaderF MRU
let g:which_key_leader_map.l.m='<leader>lm search MRU(cwd)'
noremap <silent> <leader>lM :LeaderfMruCwd<CR>
let g:which_key_leader_map.l.M='<leader>lM search MRU'
noremap <silent> <leader>lM :LeaderfMru<CR>
" LeaderF Function
let g:which_key_leader_map.l.u='<leader>lu search functions or methods in current buffer'
noremap <silent> <leader>lu :LeaderfFunction<CR>
let g:which_key_leader_map.l.U='<leader>lU search functions or methods in all buffer'
noremap <silent> <leader>lU :LeaderfFunctionAll<CR>
" LeaderF Line
let g:which_key_leader_map.l.l='<leader>ll search a line in current buffer'
noremap <silent> <leader>ll :LeaderfLine<CR>
let g:which_key_leader_map.l.L='<leader>lL search a line'
noremap <silent> <leader>lL :LeaderfLineAll<CR>
" - LeaderF History/Help
let g:which_key_leader_map.l.h={'name': '<leader>lh search history/help'}
let g:which_key_leader_map.l.h.c='<leader>lhc execute history command'
noremap <silent> <leader>lhc :LeaderfHistoryCmd<CR>
let g:which_key_leader_map.l.h.s='<leader>lhs execute history search'
noremap <silent> <leader>lhs :LeaderfHistorySearch<CR>
let g:which_key_leader_map.l.h.e='<leader>lhe navigate the help tags'
noremap <silent> <leader>lhe :LeaderfHelp<CR>
" - LeaderF Tag
let g:which_key_leader_map.l.t='<leader>lt search tags in current buffer'
noremap <silent> <leader>lt :LeaderfTag<CR>
let g:which_key_leader_map.l.T='<leader>lT search tags'
noremap <silent> <leader>lT :LeaderfBufTag<CR>
" - LeaderF Git
let g:which_key_leader_map.l.g={'name': '<leader>lg LeaderF git'}
let g:which_key_leader_map.l.g.d='<leader>lgd show diffs of current file in a vertical split window'
noremap <silent> <leader>lgd :LeaderfGitSplitDiff<CR>
let g:which_key_leader_map.l.g.n='<leader>lgn open the navigation panel'
noremap <silent> <leader>lgn :LeaderfGitNavigationOpen<CR>
" - - LeaderF Git inline Blame
let g:which_key_leader_map.l.g.b={'name': '<leader>lgb git inline blame'}
let g:which_key_leader_map.l.g.b.t='<leader>lgbt toggle inline blame'
noremap <silent> <leader>lgbt :LeaderfGitInlineBlameToggle<CR>
let g:which_key_leader_map.l.g.b.u='<leader>lbgu update inline blame'
noremap <silent> <leader>lgbu :LeaderfGitInlineBlameUpdate<Cr>

