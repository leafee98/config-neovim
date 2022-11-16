""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" my custom settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" tabstop:      length of an actual \t character:
" shiftwidth:   length to use when shifting text (eg. <<, >> and == commands), (0 for ‘tabstop’):
" softtabstop:  length to use when editing text (eg. TAB and BS keys), (0 for ‘tabstop’, -1 for ‘shiftwidth’):
" shiftround:   round indentation to multiples of 'shiftwidth' when shifting text (so that it behaves like Ctrl-D / Ctrl-T):
set tabstop=4
set shiftwidth=0
set softtabstop=-1
set shiftround

set list
set relativenumber
set number

set expandtab

set autoindent
set smartindent


let mapleader="\<Space>"
let maplocalleader="\<Space>"


" set statusline=%n\ %<%f\ %LL\ %{&modified?'[+]':&modifiable\|\|&ft=~'^\\vhelp\|qf$'?'':'[-]'}%h%r%{&fenc=='utf-8'\|\|&fenc==''?'':'['.&fenc.']'}%{'['.&ff.']'}%{&bomb?'[BOM]':''}%{&eol?'':'[noeol]'}%{&diff?'[diff]':''}%=\ 0x%-4.8B\ \ \ \ %-14.(%l,%c%V%)\ %p%%


" plugin 'toogleterm' need this or it will initialze a new terminal each time foucus on terminal
set hidden


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config of vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let s:plugs = []
call add(s:plugs, 'neovim/nvim-lspconfig')

" call add(s:plugs, 'kyazdani42/nvim-web-devicons') " for file icons
call add(s:plugs, 'kyazdani42/nvim-tree.lua')

call add(s:plugs, 'nvim-lualine/lualine.nvim')

call add(s:plugs, 'akinsho/toggleterm.nvim')

call add(s:plugs, 'lukas-reineke/indent-blankline.nvim')

" call add(s:plugs, 'bling/vim-bufferline')
call add(s:plugs, 'ap/vim-buftabline')

call add(s:plugs, 'jupyter-vim/jupyter-vim')

call add(s:plugs, 'projekt0n/github-nvim-theme')


function! s:setup_file(plug_name)
    let l:pos_dot = strridx(a:plug_name, '.')
    let l:pos_slash = strridx(a:plug_name, '/')

    let l:pos_dot = l:pos_dot > 0 ? l:pos_dot - 1 : -1
    let l:pos_slash = l:pos_slash > 0 ? l:pos_slash + 1 : 0
    return a:plug_name[l:pos_slash : l:pos_dot] .. '.vim'
endfunction


call plug#begin(has('nvim') ? stdpath('data') .. '/plugged' : '~/.vim/plugged')
for p in s:plugs
    Plug p
endfor
call plug#end()

for p in s:plugs
     execute 'source' stdpath('config') .. '/plugins.d/' .. s:setup_file(p)
endfor
