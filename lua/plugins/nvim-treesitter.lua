-- REQUIRED: TREE SITTER CLI
-- https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md

return {
    {
      "nvim-treesitter/nvim-treesitter",
      branch = "main",
      init = function()
        vim.api.nvim_create_autocmd("FileType", {
          callback = function()
            pcall(vim.treesitter.start)
            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end,
        })

        -- install parsers you need
        local ensureInstalled = { "lua", "javascript", "typescript", "tsx", "python", "html", "json", "yaml", "css", "scss", "markdown", "markdown_inline" }
        local alreadyInstalled = require("nvim-treesitter.config").get_installed()
        local parsersToInstall = vim.iter(ensureInstalled)
            :filter(function(parser)
              return not vim.tbl_contains(alreadyInstalled, parser)
            end)
            :totable()
          require('nvim-treesitter').install(parsersToInstall)
      end,
    },
}
