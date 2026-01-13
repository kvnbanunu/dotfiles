return {
    { -- Insert closing braces
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    { -- Show CSS Colors
        'brenoprata10/nvim-highlight-colors',
        config = function()
            require('nvim-highlight-colors').setup({})
        end
    },
    { -- Show historical versions of the file locally
        'mbbill/undotree',
    },
    { -- Scrollbar
        "petertriho/nvim-scrollbar",
        config = function()
            require("scrollbar").setup()
        end
    }
}
