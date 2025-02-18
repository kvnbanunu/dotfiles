return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            filesystem = {
                hijack_netrw_behavior = "disabled",
            }
        })

        vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left toggle<CR>", {})
	end
}
