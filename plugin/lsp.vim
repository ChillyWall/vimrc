" ======== vim-lsp =========
" https://github.com/prabirshrestha/vim-lsp

" ---- General LSP settings ----
let g:lsp_log_file = expand('~/.cache/vim-lsp.log')
let g:lsp_log_verbose = 0
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_echo_delay = 200
let g:lsp_diagnostics_float_cursor = 0
let g:lsp_diagnostics_signs_enabled = 1
let g:lsp_diagnostics_signs_error = {'text': '✗'}
let g:lsp_diagnostics_signs_warning = {'text': '⚠'}
let g:lsp_diagnostics_signs_information = {'text': 'ℹ'}
let g:lsp_diagnostics_signs_hint = {'text': '➤'}
let g:lsp_document_code_action_signs_enabled = 1
let g:lsp_document_code_action_signs_hint = {'text': '💡'}
let g:lsp_signature_help_enabled = 1
let g:lsp_fold_enabled = 0
let g:lsp_document_highlight_enabled = 1
let g:lsp_completion_documentation_enabled = 1

" ---- clangd ----
" Direct call — this file loads after vim-lsp, so lsp#register_server is available.
" Do NOT use User lsp_setup autocommand, it has already fired.
if executable('clangd')
    call lsp#register_server({
                \ 'name': 'clangd',
                \ 'cmd': {server_info->[
                \     'clangd',
                \     '--background-index',
                \     '--clang-tidy',
                \     '--completion-style=detailed',
                \     '--inlay-hints=true',
                \     '--header-insertion=iwyu',
                \     '--cross-file-rename',
                \     ]},
                \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp', 'cuda'],
                \ })
    call lsp#register_server({
                \ 'name': 'cmake',
                \ 'cmd': {server_info->['cmake-language-server']},
                \ 'allowlist': ['cmake'],
                \ })
endif

" ---- asyncomplete (autocompletion) ----
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_backspace() ? "\<TAB>" :
      \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <CR> pumvisible() ? asyncomplete#close_popup() . "\<CR>" : "\<CR>"
inoremap <silent><expr> <C-space> asyncomplete#force_refresh()

function! s:check_backspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" ---- Keybindings ----
" ===== g keymap (navigation) =====
let g:which_key_g_map['d'] = "definition"
nmap <silent> gd <plug>(lsp-definition)
let g:which_key_g_map['y'] = "type definition"
nmap <silent> gy <plug>(lsp-type-definition)
let g:which_key_g_map['i'] = "implementation"
nmap <silent> gi <plug>(lsp-implementation)
let g:which_key_g_map['r'] = "references"
nmap <silent> gr <plug>(lsp-references)
let g:which_key_g_map['['] = "prev diagnostic"
nmap <silent> g[ <plug>(lsp-previous-diagnostic)
let g:which_key_g_map[']'] = "next diagnostic"
nmap <silent> g] <plug>(lsp-next-diagnostic)
nnoremap <silent> K :LspHover<CR>

" ===== leader keymap =====
" --- a - code actions ---
let g:which_key_leader_map.a = {'name': '<leader>a LSP actions'}
let g:which_key_leader_map.a.c = "<leader>ac code action at cursor"
nmap <leader>ac <plug>(lsp-code-action)
let g:which_key_leader_map.a.s = "<leader>as source code action"
nmap <leader>as <plug>(lsp-code-action-float)

" --- r - refactor ---
let g:which_key_leader_map.r = {'name': '<leader>r refactor'}
let g:which_key_leader_map.r.n = "<leader>rn rename"
nmap <leader>rn <plug>(lsp-rename)

" --- f - format (via clangd's textDocument/formatting) ---
let g:which_key_leader_map.f = {'name': '<leader>f format'}
let g:which_key_leader_map.f.f = "<leader>ff format document"
nmap <leader>ff :LspDocumentFormatSync<CR>
let g:which_key_leader_map.f.s = "<leader>fs format selection"
xmap <leader>fs <plug>(lsp-document-range-format)

" --- h - hover/symbol ---
let g:which_key_leader_map.h = {'name': '<leader>h help/hover'}
let g:which_key_leader_map.h.h = "<leader>hh hover documentation"
nmap <leader>hh :LspHover<CR>
let g:which_key_leader_map.h.s = "<leader>hs signature help"
nmap <leader>hs :LspSignatureHelp<CR>
let g:which_key_leader_map.h.d = "<leader>hd peek definition"
nmap <leader>hd :LspPeekDefinition<CR>
let g:which_key_leader_map.h.t = "<leader>ht peek type definition"
nmap <leader>ht :LspPeekTypeDefinition<CR>
let g:which_key_leader_map.h.w = "<leader>hw workspace symbol"
nmap <leader>hw :LspWorkspaceSymbol<CR>
let g:which_key_leader_map.h.b = "<leader>hb document symbol"
nmap <leader>hb :LspDocumentSymbol<CR>
let g:which_key_leader_map.h.r = "<leader>hr references"
nmap <leader>hr :LspReferences<CR>

" --- d - diagnostics ---
let g:which_key_leader_map.d = {'name': '<leader>d diagnostics'}
let g:which_key_leader_map.d.n = "<leader>dn next diagnostic"
nmap <leader>dn <plug>(lsp-next-diagnostic)
let g:which_key_leader_map.d.p = "<leader>dp previous diagnostic"
nmap <leader>dp <plug>(lsp-previous-diagnostic)
let g:which_key_leader_map.d.l = "<leader>dl show diagnostics"
nmap <leader>dl :LspDocumentDiagnostics<CR>
let g:which_key_leader_map.d.e = "<leader>de explain diagnostic"
nmap <leader>de :LspExplainError<CR>

" ---- Statusline ----
function! s:lsp_status() abort
    if exists('*lsp#get_buffer_diagnostics_counts')
        let l:counts = lsp#get_buffer_diagnostics_counts()
        let l:parts = []
        if get(l:counts, 'error', 0) > 0
            call add(l:parts, 'E:' . l:counts.error)
        endif
        if get(l:counts, 'warning', 0) > 0
            call add(l:parts, 'W:' . l:counts.warning)
        endif
        return empty(l:parts) ? '' : ' ' . join(l:parts, ' ')
    endif
    return ''
endfunction
set statusline+=%{s:lsp_status()}
