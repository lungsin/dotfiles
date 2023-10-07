return {
    -- Automatically install LSPs to stdpath for neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    -- Utility function to setup LSP config
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            -- Additional lua configuration, makes nvim stuff amazing!
            'folke/neodev.nvim',
        },
    },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            -- Snippet Engine & its associated nvim-cmp source
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',

            -- Adds LSP completion capabilities
            'hrsh7th/cmp-nvim-lsp',

            -- Adds a number of user-friendly snippets
            'rafamadriz/friendly-snippets',
        },
    },
}
