" ======== coc.nvim ===========
" https://raw.githubusercontent.com/neoclide/coc.nvim/master/doc/coc-example-config.vim

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
let g:which_key_g_map['['] = "prev diagnostic"
nmap <silent><nowait> g[ <Plug>(coc-diagnostic-prev)
let g:which_key_g_map[']'] = "next diagnostic"
nmap <silent><nowait> g] <Plug>(coc-diagnostic-next)

" GoTo code navigation
let g:which_key_g_map['d'] = "definition"
nmap <silent><nowait> gd <Plug>(coc-definition)
let g:which_key_g_map['y'] = "type definition"
nmap <silent><nowait> gy <Plug>(coc-type-definition)
let g:which_key_g_map['i'] = "implementation"
nmap <silent><nowait> gi <Plug>(coc-implementation)
let g:which_key_g_map['r'] = "references"
nmap <silent><nowait> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
augroup end

" Formatting selected code
let g:which_key_leader_map.f = {'name': '<leader>f fix/format'}
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Apply the most preferred quickfix action to fix diagnostic on the current line
let g:which_key_leader_map.F = "<leader>cF fix the current line"
nmap <leader>F  <Plug>(coc-fix-current)

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
let g:which_key_leader_map.a = {'name': '<leader>a coc action'}
xmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap keys for applying code actions at the cursor position
let g:which_key_leader_map.a.c = "<leader>ca action at cursor"
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
let g:which_key_leader_map.a.s = "<leader>cas source action"
nmap <leader>as  <Plug>(coc-codeaction-source)
" Run the Code Lens action on the current line
let g:which_key_leader_map.a.l = "<leader>cl codelens action"
nmap <leader>al  <Plug>(coc-codelens-action)

" Remap keys for applying refactor code actions
let g:which_key_leader_map.r = {"name": "<leader>r refactor"}
let g:which_key_leader_map.r.e = "<leader>re refactor"
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>re  <Plug>(coc-codeaction-refactor-selected)
" Symbol renaming
let g:which_key_leader_map.r.n = "<leader>cr rename"
nmap <leader>rn <Plug>(coc-rename)

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

