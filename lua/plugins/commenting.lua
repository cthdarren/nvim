return {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
    config = function()
        require("Comment").setup()
        local api = require("Comment.api")
        local config = require("Comment.config"):get()

        vim.keymap.set("n", "<C-/>", function()
            return vim.v.count == 0 and "<Plug>(comment_toggle_linewise_current)"
                or "<Plug>(comment_toggle_linewise_count)"
        end, { expr = true })
    vim.keymap.set('x', '<C-/>', '<Plug>(comment_toggle_linewise_visual)')
    end,
}
