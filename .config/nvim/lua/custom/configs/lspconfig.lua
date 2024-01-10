local config = require("plugins.configs.lspconfig")
local util = require("lspconfig.util")
local async = require("lspconfig.async")
local mod_cache = "~\\go\\pkg\\mod"
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	init_options = {
		preferences = {
			disableSuggestions = true,
		},
	},
})

for _, lsp in ipairs({ "cssls", "clangd", "elmls", "tailwindcss" }) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

lspconfig.gopls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	root_dir = function(fname)
		if not mod_cache then
			local result = async.run_command("go env GOMODCACHE")
			if result and result[1] then
				mod_cache = vim.trim(result[1])
			end
		end
		if fname:sub(1, #mod_cache) == mod_cache then
			local clients = vim.lsp.get_active_clients({ name = "gopls" })
			if #clients > 0 then
				return clients[#clients].config.root_dir
			end
		end
		return util.root_pattern("go.work")(fname) or util.root_pattern("go.mod", ".git")(fname)
	end,
	single_file_support = true,
})

lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "python" },
})
