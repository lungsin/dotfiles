return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- Fuzzy Finder Algorithm which requires local dependencies to be built.
        -- Only load if `make` is available. Make sure you have the system
        -- requirements installed.
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            -- NOTE: If you are having trouble with this installation,
            --       refer to the README for telescope-fzf-native for more instructions.
            build = 'make',
        },
        -- Browse the current buffer's undo tree in a text-based tree representation using telescope.
        'debugloop/telescope-undo.nvim',
    },
    -- keys = {
        -- { "<leader>u", "<cmd>Telescope undo<cr>", desc = "Find [U]ndo history" },
        -- { "<leader>u", "<cmd>Telescope undo<cr>", desc = "Find [U]ndo history" },
    -- },
    config = function()
        -- [[ Configure Telescope ]]
        -- See `:help telescope` and `:help telescope.setup()`
        require('telescope').setup {
            extensions = {
                undo = {
                    side_by_side = true,
                    layout_strategy = "vertical",
                    layout_config = {
                        preview_height = 0.8,
                    },
                },

            },
        }

        -- Enable telescope fzf native, if installed
        require('telescope').load_extension('fzf')

        -- Load telescope undo extension
        require("telescope").load_extension("undo")
        vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")

        -- See `:help telescope.builtin`
        vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles,
            { desc = '[?] Find recently opened files' })
        vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers,
            { desc = '[ ] Find existing buffers' })
        vim.keymap.set('n', '<leader>/', function()
            -- You can pass additional configuration to telescope to change theme, layout, etc.
            require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, { desc = '[/] Fuzzily search in current buffer' })

        vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
        vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
        vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
        vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
        vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
        vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
        vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
    end,
}
