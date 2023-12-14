local M = {}

M.general = {

  n = {
    ["<Up>"] = { ":resize +2<CR>", "", opts = { silent = true } },
    ["<Down>"] = { ":resize -2<CR>", "", opts = { silent = true } },
    ["<Left>"] = { ":vertical resize +2<CR>", "", opts = { silent = true } },
    ["<Right>"] = { ":vertical resize -2<CR>", "", opts = { silent = true } },

    ["J"] = { "mzJ`z", "" },

    ["<C-d>"] = { "<C-d>zz", "" },
    ["<C-u>"] = { "<C-u>zz", "" },
    ["n"] = { "nzzzv", "" },
    ["N"] = { "Nzzzv", ""},

    ["\\v"] = { ":vsp<CR>", "", opts = { silent = true }},
    ["\\h"] = { ":sp<CR>", "", opts = { silent = true }},

    ["<C-p>"] = { '"+pgv=', "" },
  },

  x = {
    ['K'] = { ":move '<-2<CR>gv=gv", "", opts = { silent = true } },
    ['J'] = { ":move '>+1<CR>gv=gv", "", opts = { silent = true } }
  },
}

M.comment = {
  plugin = true,

  n = {
    ["<C-_>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
  },

  v = {
    ["<C-_>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

return M
