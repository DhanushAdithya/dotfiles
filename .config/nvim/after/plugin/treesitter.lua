require 'nvim-treesitter.install'.compilers = { 'zig' }

require('nvim-treesitter.configs').setup({
    ensure_installed = { "c", "rust", "go", "javascript", "typescript" },

    -- sync_install = false,
    auto_install = true,
    autopairs = { enable = true },

    autotag = { enable = true },
    highlight = { enable = true },
    indent = {
        enable = true,
        -- disable = { 'python', 'javascriptreact', 'typescriptreact', 'py' },
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<c-space>',
            node_incremental = '<c-space>',
            scope_incremental = '<c-s>',
            node_decremental = '<c-backspace>',
        },
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
})
