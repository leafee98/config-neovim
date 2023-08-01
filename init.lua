-- enable read config from CWD
vim.o.exrc = true

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

vim.keymap.set("n", "\\q", "<cmd>wincmd q<CR>", { silent = true })
vim.keymap.set("n", "zh", "<cmd>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "zj", "<cmd>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "zk", "<cmd>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "zl", "<cmd>wincmd l<CR>", { silent = true })

vim.keymap.set("n", "<F1>", "<cmd>bprevious<CR>", { silent = true })
vim.keymap.set("n", "<F2>", "<cmd>bnext<CR>",     { silent = true })

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load custom config
custom = {
    full_feature = false,
    proxy_url = "",
}

local custom_config_path = vim.fn.stdpath("config") .. "/custom.lua"
local ok, t = pcall(dofile, custom_config_path)
if ok then
    for k, v in pairs(t) do
        custom[k] = v
    end
end

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
