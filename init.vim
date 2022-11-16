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

function! s:add_plug(name, setup = v:true)
    call add(s:plugs, { 'setup': a:setup, 'name': a:name })
endfunction

function! s:plug_name(dict)
    return get(a:dict, 'name')
endfunction

function! s:plug_setup(dict)
    return get(a:dict, 'setup')
endfunction

" call add_plug('kyazdani42/nvim-web-devicons', v:false)
" call add_plug('bling/vim-bufferline', v:false)

call s:add_plug('neovim/nvim-lspconfig')
call s:add_plug('kyazdani42/nvim-tree.lua')
call s:add_plug('nvim-lualine/lualine.nvim')
call s:add_plug('akinsho/toggleterm.nvim')
call s:add_plug('lukas-reineke/indent-blankline.nvim')
call s:add_plug('ap/vim-buftabline')
call s:add_plug('jupyter-vim/jupyter-vim')
call s:add_plug('projekt0n/github-nvim-theme')


function! s:setup_file(plug_name)
    let l:pos_dot = strridx(a:plug_name, '.')
    let l:pos_slash = strridx(a:plug_name, '/')

    let l:pos_dot = l:pos_dot > 0 ? l:pos_dot - 1 : -1
    let l:pos_slash = l:pos_slash > 0 ? l:pos_slash + 1 : 0
    return a:plug_name[l:pos_slash : l:pos_dot] .. '.vim'
endfunction


call plug#begin(has('nvim') ? stdpath('data') .. '/plugged' : '~/.vim/plugged')
for p in s:plugs
    " Plug s:plug_name(p)
    Plug get(p, 'name')
endfor
call plug#end()

for p in s:plugs
    if s:plug_setup(p)
        execute 'source' stdpath('config') .. '/plugins.d/' .. s:setup_file(s:plug_name(p))
    endif
endfor
