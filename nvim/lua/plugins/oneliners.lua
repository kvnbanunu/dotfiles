return {
	{ -- Insert closing braces
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{ -- Show CSS Colors
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({})
		end,
	},
	{ -- Show historical versions of the file locally
		"mbbill/undotree",
	},
	{ -- Scrollbar
		"petertriho/nvim-scrollbar",
		config = function()
			require("scrollbar").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			indent = { char = "┊" },
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"ajbucci/ipynb.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"neovim/nvim-lspconfig",
			"nvim-tree/nvim-web-devicons", -- optional, for language icons
			"folke/snacks.nvim", -- optional, for inline images
		},
		opts = {},
	},
}
