local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
    return
end

packer.init({
    display = {
        open_fn = function()
            return require('packer.util').float({ border = "rounded" })
        end
    }
})

return packer.startup(function(use)
    -- Packer: Packer Manager
    use 'wbthomason/packer.nvim'

    -- auto pairs & tags
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    use 'onsails/lspkind-nvim'

    -- Telescope: Fuzzy Finder
    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    })

    -- Colorscheme
    use "ellisonleao/gruvbox.nvim"
    -- use { "catppuccin/nvim", as = "catppuccin" }
    -- use 'folke/tokyonight.nvim'
    -- use 'sainnhe/gruvbox-material'

    -- File Tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly'                    -- optional, updated every week. (see issue #1193)
    }

    -- Commenter
    use {
        "terrortylor/nvim-comment",
        config = function() require('nvim_comment').setup() end
    }

    -- Status Line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- git gutter
    use {
        'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
        config = function() require('gitsigns').setup() end
    }

    -- Git
    use 'tpope/vim-fugitive'

    -- Surround
    use 'tpope/vim-surround'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    -- Flutter Tools
    use {
        'akinsho/flutter-tools.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- Trouble plugin
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {}
        end
    }

    -- Copilot
    use 'github/copilot.vim'
end)
