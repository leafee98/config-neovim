return {
    "nvim-treesitter/nvim-treesitter",
    main = "nvim-treesitter.configs",
    config = true,
    build =  ":TSUpdate",
    opts = {
        indent = { enable = true },
        highlight = { enable = true },
        ensure_installed = {
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
        },
        auto_install = true,
        sync_install = false,
    },
}