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
        "karb94/neoscroll.nvim",
        main = "neoscroll",
        config = true,
        opts = { },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "indent_blankline",
        config = true,
        opts = {
            show_current_context = true,
            show_current_context_start = true,
        },
    },
    {
        "lewis6991/gitsigns.nvim",
        main = "gitsigns",
        opts = { },
    },
    {
        "akinsho/bufferline.nvim",
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
