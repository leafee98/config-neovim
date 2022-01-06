""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config of vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/toggleterm.nvim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load setup of plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute 'source' "~/.config/nvim/plugins.vim.d/nvim-lspconfig.vim"
execute 'source' "~/.config/nvim/plugins.vim.d/nvim-tree.vim"
execute 'source' "~/.config/nvim/plugins.vim.d/toggleterm.vim"
