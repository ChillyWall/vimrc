" keymap
let g:which_key_leader_map.E={'name': '<leader>E open Fern'}
nmap <leader>e :Fern . -drawer -keep -toggle<cr>

let g:fern#renderer = "nerdfont"

function! s:init_fern() abort
  " Use 'select' instead of 'edit' for default 'open' action
  nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)
  nmap <buffer> o <Plug>(fern-action-open:split)
  nmap <buffer> v <Plug>(fern-action-open:vsplit)
  unmap <buffer> <C-l>
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END
