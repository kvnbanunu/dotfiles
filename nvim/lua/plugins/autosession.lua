return {
	"rmagatti/auto-session",
	config = function()
		local session = require("auto-session")

		session.setup({
			auto_restore_enabled = false,
			auto_session_spress_dirs = { "~/", "~/work", "~/Downloads", "~/Documents", "~/Desktop/" },
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
		keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
	end,
}
