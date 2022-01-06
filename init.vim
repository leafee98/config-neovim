""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

execute 'source' "~/.config/nvim/plugins.vim"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load custom config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" plugin 'toogleterm' need this or it will initialze a new terminal each time
" foucus on terminal
set hidden

" show some whitespaces
set list

" set for "hybrid" line number
set relativenumber
set number

" tab and auto indent
set expandtab

set autoindent
set smartindent

" length of an actual \t character:
set tabstop=4
" length to use when shifting text (eg. <<, >> and == commands)
" (0 for ‘tabstop’):
set shiftwidth=0
" length to use when editing text (eg. TAB and BS keys)
" (0 for ‘tabstop’, -1 for ‘shiftwidth’):
set softtabstop=-1
" round indentation to multiples of 'shiftwidth' when shifting text
" (so that it behaves like Ctrl-D / Ctrl-T):
set shiftround

