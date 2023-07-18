return {
    "lewis6991/gitsigns.nvim",
    main = "gitsigns",
    enabled = full_feature,
    opts = {
        on_attach = function(bufnr)
            local gs = package.loaded.gitsigns
            local function m(mode, l, r, opts)
                opts = opts or {}
                opts.buffer = bufnr
                vim.keymap.set(mode, l, r, opts)
            end

            m("n", "]h", function()
                if vim.wo.diff then return "]c" end
                vim.schedule(function() gs.next_hunk() end)
                return "<Ignore>"
            end, {expr=true})

            m('n', '[h', function()
                if vim.wo.diff then return '[c' end
                vim.schedule(function() gs.prev_hunk() end)
                return '<Ignore>'
            end, {expr=true})

            m('n', '<leader>hs', gs.stage_hunk)
            m('n', '<leader>hr', gs.reset_hunk)
            m('v', '<leader>hs', function() gs.stage_hunk {vim.fn.line("."), vim.fn.line("v")} end)
            m('v', '<leader>hr', function() gs.reset_hunk {vim.fn.line("."), vim.fn.line("v")} end)
            m('n', '<leader>hS', gs.stage_buffer)
            m('n', '<leader>hu', gs.undo_stage_hunk)
            m('n', '<leader>hR', gs.reset_buffer)
            m('n', '<leader>hp', gs.preview_hunk)
            m('n', '<leader>hb', function() gs.blame_line{full=true} end)
            -- m('n', '<leader>tb', gs.toggle_current_line_blame)
            m('n', '<leader>hd', gs.diffthis)
            m('n', '<leader>hD', function() gs.diffthis('~') end)
            -- m('n', '<leader>td', gs.toggle_deleted)
        end,
    },
    config = function (lazyplug, opts)
        require(lazyplug.main).setup(opts)
    end,
}
