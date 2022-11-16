if has('nvim')
    "let g:python3_host_prog = '~/miniconda3/envs/torch/bin/python3'
    let g:python3_host_prog = '/usr/bin/python3'
else
    set pyxversion=3
endif

" Always use the same virtualenv for vim, regardless of what Python
" environment is loaded in the shell from which vim is launched
"
" let g:vim_virtualenv_path = '~/miniconda3/envs/torch'
" if exists('g:vim_virtualenv_path')
"     pythonx import os; import vim
"     pythonx activate_this = os.path.join(vim.eval('g:vim_virtualenv_path'), 'bin/activate_this.py')
"     pythonx with open(activate_this) as f: exec(f.read(), {'__file__': activate_this})
" endif


"""""""""""""""""""""""""
" Key mapping
"""""""""""""""""""""""""

" Run current file
nnoremap <buffer> <silent> <localleader>R :JupyterRunFile<CR>
nnoremap <buffer> <silent> <localleader>I :PythonImportThisFile<CR>

" Change to directory of current file
nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>

" Send a selection of lines
nnoremap <buffer> <silent> <localleader>X :JupyterSendCell<CR>
nnoremap <buffer> <silent> <localleader>E :JupyterSendRange<CR>
nmap     <buffer> <silent> <localleader>e <Plug>JupyterRunTextObj
vmap     <buffer> <silent> <localleader>e <Plug>JupyterRunVisual

" Debugging maps
nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>
