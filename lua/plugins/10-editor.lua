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
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = { },
    },
    {
        "famiu/bufdelete.nvim",
        lazy = false,
        keys = {
            { "zx", "<cmd>Bdelete<CR>", mode = "n" },
        },
    },
    {
        "karb94/neoscroll.nvim",
        enabled = custom.full_feature,
        main = "neoscroll",
        opts = { },
    },
    {
        "akinsho/bufferline.nvim",
        enabled = custom.full_feature,
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
        enabled = custom.full_feature,
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
        enabled = custom.full_feature,
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

            vim.api.nvim_create_autocmd("QuitPre", {
                callback = function()
                    local invalid_win = {}
                    local wins = vim.api.nvim_list_wins()
                    for _, w in ipairs(wins) do
                        local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
                        if bufname:match("NvimTree_") ~= nil then
                            table.insert(invalid_win, w)
                        end
                    end
                    if #invalid_win == #wins - 1 then
                        -- Should quit, so we close all invalid windows.
                        for _, w in ipairs(invalid_win) do vim.api.nvim_win_close(w, true) end
                    end
                end
            })
        end,
    }
}
