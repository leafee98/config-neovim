""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config of toggleterm
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua << EOF
require("toggleterm").setup{
}
EOF

nnoremap <C-\> <Cmd>ToggleTerm<CR>
" tnoremap <C-\> <Cmd>ToggleTerm<CR>
tnoremap <C-\> <Cmd>wincmd p<CR>
tnoremap <leader><Esc> <C-\><c-n>
