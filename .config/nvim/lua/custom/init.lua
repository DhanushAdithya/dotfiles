local opts = vim.opt

opts.tabstop = 4
opts.softtabstop = 4
opts.shiftwidth = 4
opts.expandtab = true

opts.smartindent = true

opts.wrap = true

opts.hlsearch = false
opts.incsearch = true

opts.termguicolors = true

opts.scrolloff = 10
opts.pumheight = 12
opts.cursorline = true
opts.signcolumn = "yes"
opts.swapfile = false
opts.ro = false
opts.rnu = true

opts.updatetime = 50

opts.colorcolumn = "80"

opts.termguicolors = true

opts.updatetime = 250

vim.o.confirm = true

vim.api.nvim_create_autocmd("BufEnter", {
	group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
	callback = function()
		local layout = vim.api.nvim_call_function("winlayout", {})
		if
			layout[1] == "leaf"
			and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree"
			and layout[3] == nil
		then
			vim.cmd("quit")
		end
	end,
})
