local opts = {
  sort_by = "case_sensitive",
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
    width = 35,
    signcolumn = "yes",
  },
  renderer = {
    group_empty = true,
    icons = {
      git_placement = "signcolumn",
      show = {
        git = true,
      },
    },
  },
  git = {
    enable = true,
    ignore = true,
  },
  filters = {
    dotfiles = true,
    custom = { "^node_modules$" }
  },
}

return opts
