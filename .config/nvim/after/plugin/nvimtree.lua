vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    view = {
        adaptive_size = false,
        mappings = {
            list = {
                { key = "ma", action = "create" },
                { key = "md", action = "remove" },
                { key = "r", action = "refresh" },
                { key = "mm", action = "rename" },
                { key = "<S-i>", action = "toggle_dotfiles" }
            },
        },
    },
    renderer = {
        group_empty = true,
        icons = {
            git_placement = "before",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    filters = {
        dotfiles = true,
        custom = { "^node_modules$" }
    },
})

vim.api.nvim_create_autocmd("BufEnter", {
    group = vim.api.nvim_create_augroup("NvimTreeClose", {clear = true}),
    pattern = "NvimTree_*",
    callback = function()
        local layout = vim.api.nvim_call_function("winlayout", {})
        if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree" and layout[3] == nil then vim.cmd("confirm quit") end
    end
})
