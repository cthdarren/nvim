return {
   "m4xshen/hardtime.nvim",
   lazy = false,
   dependencies = { "MunifTanjim/nui.nvim" },
   opts = {
        timeout = 500,
        restricted_keys = {
          ["j"] = false,
          ["k"] = false,
       },
    },
}
