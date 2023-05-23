vim.o.tabstop = 4
vim.o.shiftwidth = 0
vim.o.softtabstop = -1
vim.o.shiftround = true

vim.o.list = true
vim.o.relativenumber = true
vim.o.number = true

vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

vim.keymap.set("n", "<C-q>", "<cmd>wincmd q<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", { silent = true })

vim.keymap.set("n", "<F1>", "<cmd>bprevious<CR>", { silent = true })
vim.keymap.set("n", "<F2>", "<cmd>bnext<CR>",      { silent = true })
vim.keymap.set("n", "<F3>", "<cmd>bdelete<CR>",      { silent = true })

vim.g.mapleader = " "
vim.g.maplocalleader = " "

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end
full_feature = file_exists(vim.fn.stdpath("config") .. "/_full_feature")

-- Use lazy.nvim as plugin manager, and load plugin's config
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
