return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',
        config = function()
            local treesitter = require('nvim-treesitter.config')
            treesitter.setup({
                highlight = { enable = true },
                indent = { enable = true },
                auto_install = true,
            })
        end
    }
}
