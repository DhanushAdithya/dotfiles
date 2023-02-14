local gruvbox_ok, gruvbox = pcall(require, 'gruvbox')
if not gruvbox_ok then
    return
end

gruvbox.setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = false,
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
})

vim.cmd.colorscheme("gruvbox")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#83a598", bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#fb4934", bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#fabd2f", bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#8ec07c", bg = "none" })

-- require('catppuccin').setup({
--     no_italic = true, -- Force no italic
--     no_bold = true,
-- })
--
-- vim.cmd.colorscheme "catppuccin"
-- local command = 'highlight SignColumn guibg=NONE'
-- vim.cmd(command)
