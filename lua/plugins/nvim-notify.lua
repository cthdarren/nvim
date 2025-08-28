return {
   "rcarriga/nvim-notify",
    config = function()
        vim.notify = require("notify")
        require("notify").setup{
            stages = "fade_in_slide_out",
            timeout = 100,
            render = "minimal"
        }
    end,
}
