return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require "null-ls"
      opts.sources = vim.list_extend(opts.sources or {}, {
        -- fish shell
        nls.builtins.formatting.fish_indent,
        nls.builtins.diagnostics.fish,

        nls.builtins.formatting.packer,

        nls.builtins.diagnostics.puppet_lint,
        nls.builtins.formatting.puppet_lint,
      })
    end,
    lazy = true,
  },
}
