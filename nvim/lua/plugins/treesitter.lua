return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		branch = "main",
	},
	{
		"mks-h/treesitter-autoinstall.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("treesitter-autoinstall").setup({
				highlight = true,
				ignore = {
					"cmp_docs",
					"lazy",
					"mason",
					"TelescopePrompt",
					"TelescopeResults",
					"NvimTree",
					"help",
					"checkhealth",
					"netrw",
				},
			})
		end,
	},
}
