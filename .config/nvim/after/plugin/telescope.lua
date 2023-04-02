local actions = require("telescope.actions")

require('telescope').setup({
    defaults = {
        prompt_prefix = '$ ',
        mappings = {
            i = {
                ["<esc><esc>"] = actions.close,
            },
            n = {
                ["<esc><esc>"] = actions.close,
            },
        },
        vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--ignore-file',
            '.gitignore'
        },
    }
})
