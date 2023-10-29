return {
    "numToStr/FTerm.nvim",
    config = function()
        -- local fterm = require('FTerm')
        -- fterm.setup({})

        vim.keymap.set('n', '<C-_>', '<CMD>lua require("FTerm").toggle()<CR>')
        vim.keymap.set('t', '<C-_>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
    end
}
