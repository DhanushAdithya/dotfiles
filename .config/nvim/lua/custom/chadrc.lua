---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "gruvchad",
	statusline = {
		theme = "default",
		separator_style = "block",
	},
	transparency = true,
	nvdash = {
		load_on_startup = true,
		header = {
			"        へ      ╱|、        ",
			"     ૮ - ՛)     (˚ˎ。7       ",
			"      /⁻ ៸|      |、⁻〵      ",
			"  乀(ˍ, ل ل      じしˍ,)ノ   ",
		},
	},
}

M.plugins = "custom.plugins"

M.mappings = require("custom.mappings")

if vim.fn.executable("zsh") then
	vim.o.shell = "zsh"
	vim.o.shellcmdflag = "-c"
end

-- require("custom.opts")

return M
