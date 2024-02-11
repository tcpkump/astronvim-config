return {
  { "AstroNvim/astrocommunity" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  {
    "zbirenbaum/copilot.lua",
    opts = {
      filetypes = {
        -- these are disabled by default for some reason
        yaml = true,
        markdown = true,
      },
    },
  },
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.helm" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.ruby" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require "null-ls"
      -- opts.root_dir = opts.root_dir
      --   or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")
      opts.sources = vim.list_extend(opts.sources or {}, {
        -- fish shell
        nls.builtins.formatting.fish_indent,
        nls.builtins.diagnostics.fish,

        nls.builtins.formatting.packer,

        nls.builtins.diagnostics.puppet_lint,
        nls.builtins.formatting.puppet_lint,
      })
    end,
  },
}
