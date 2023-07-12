return {
    {
        "sainnhe/gruvbox-material",
        config = function(_, _)
            vim.o.termguicolors = true
            vim.g.background = "dark"
            vim.cmd("colorscheme gruvbox-material")
        end
    },
    {
        "famiu/bufdelete.nvim",
        lazy = false,
        keys = {
            { "<F3>", "<cmd>Bdelete<CR>", mode = "n" },
        },
    },
    {
        "karb94/neoscroll.nvim",
        enabled = full_feature,
        main = "neoscroll",
        opts = { },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "indent_blankline",
        opts = {
            show_current_context = true,
            show_current_context_start = true,
        },
    },
    {
        "akinsho/bufferline.nvim",
        enabled = full_feature,
        main = "bufferline",
        opts = {
            options = {
                numbers = "both",
                diagnostics = "nvim_lsp",
                separator_style = "slant",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "center",
                        separator = true,
                    },
                },
                hover = {
                    delay = 200,
                    reveal = { "close" },
                },
            }
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        enabled = full_feature,
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        main = "lualine",
        opts = { },
        init = function(_)
            vim.o.mousemoveevent = true
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        enabled = full_feature,
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        main = "nvim-tree",
        opts = { },
        lazy = false,
        keys = {
            { "<leader>t", "<cmd>NvimTreeFocus<CR>", mode = "n" },
        },
        init = function(_)
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
        end,
    }
}
