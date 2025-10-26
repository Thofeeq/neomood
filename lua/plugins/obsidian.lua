return {
	"epwalsh/obsidian.nvim",
	version = "*",
	event = "VeryLazy",
	ft = "markdown",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		-- Existing shortcuts
		{ "<leader>sn", "<cmd>ObsidianSearch<cr>", desc = "Obsidian Search" },
		{ "<leader>bn", "<cmd>ObsidianNew<cr>", desc = "New Note" },

		-- New shortcuts
		{ "<leader>ot", "<cmd>ObsidianToday<cr>", desc = "Open Today's Note" },
		{ "<leader>oy", "<cmd>ObsidianYesterday<cr>", desc = "Open Yesterday's Note" },
		{ "<leader>om", "<cmd>ObsidianTomorrow<cr>", desc = "Open Tomorrow's Note" },
		{ "<leader>on", "<cmd>ObsidianNew<cr>", desc = "Create New Note" },
		{ "<C-Space>", "<cmd>ObsidianToggleCheckbox<cr>", desc = "Toggle Checkbox" },
	},
	opts = {
		workspaces = {
			{ name = "personal", path = "~/Documents/vimwiki/" },
		},
		ui = {
			enable = false,
		},
	},
}
