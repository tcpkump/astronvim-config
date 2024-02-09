return {
  n = {
    ["<leader>y"] = { '"+y', desc = "Yank to system clipboard" },
    ["<leader>d"] = { '"_d', desc = "Delete without yanking" },

    ["Q"] = { "<nop>", desc = "We don't like Q" },

    ["<C-u>"] = { "<C-u>zz", desc = "Half page scrolling" },
    ["<C-d>"] = { "<C-d>zz", desc = "Half page scrolling" },

    ["n"] = { "nzzzv", desc = "Search navigation" },
    ["N"] = { "Nzzzv", desc = "Search navigation" },

    ["<S-H>"] = { ":bprevious<CR>", desc = "Switch to previous buffer" },
    ["<S-L>"] = { ":bnext<CR>", desc = "Switch to next buffer" },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move lines down" },
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move lines up" },

    ["<leader>y"] = { '"+y', desc = "Yank to system clipboard" },
    ["<leader>d"] = { '"_d', desc = "Delete without yanking" },
  },
}
