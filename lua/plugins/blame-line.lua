return {
    "tveskag/nvim-blame-line",
    config = function()
        vim.keymap.set('n', '<leader>b', ':ToggleBlameLine<CR>', { desc = "Toggle Git blame", silent = true })
    end
}
