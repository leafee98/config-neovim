local full_ensure = {
    "bash",
    "c",
    "cmake",
    "cpp",
    "css",
    "diff",
    "dockerfile",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "go",
    "gomod",
    "gosum",
    "html",
    "java",
    "javascript",
    "json",
    "json5",
    "jsonc",
    "lua",
    "luadoc",
    "luau",
    "make",
    "markdown",
    "markdown_inline",
    "python",
    "rust",
    "scss",
    "sql",
    "toml",
    "vim",
    "vimdoc",
    "yaml"
}

local basic_ensure = {
    "toml",
    "json",
    "json5",
    "jsonc",
    "yaml",
}

if full_feature then
    ensure = full_ensure
else
    ensure = basic_ensure
end

return {
    "nvim-treesitter/nvim-treesitter",
    main = "nvim-treesitter.configs",
    build =  ":TSUpdate",
    opts = {
        indent = { enable = true },
        highlight = { enable = true },
        ensure_installed = ensure,
        auto_install = true,
        sync_install = false,
    },
}
