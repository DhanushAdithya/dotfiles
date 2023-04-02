vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost packer.lua source <afile> | PackerSync
    augroup end
]]

vim.cmd [[autocmd BufWritePre *.go lua vim.lsp.buf.format()]]
