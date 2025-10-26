-- ~/.config/nvim/lua/plugins/workspaces.lua
return {
	"natecraddock/workspaces.nvim",
	event = "VeryLazy",
	keys = {
		{ "<leader>ww", "<cmd>WorkspacesOpen<CR>", desc = "List Workspaces" },
		{ "<leader>we", "<cmd>WorkspacesAdd<CR>", desc = "Add Workspace" },
		{ "<leader>wr", "<cmd>WorkspacesRemove<CR>", desc = "Remove Workspace" },
		{ "<leader>ws", "<cmd>WorkspacesSyncDirs<CR>", desc = "Sync Workspace Dirs" },
		{ "<leader>wn", "<cmd>WorkspacesRename<CR>", desc = "Rename Workspace" },
	},
	config = function()
		require("workspaces").setup({
			path = vim.fn.stdpath("data") .. "/workspaces",
			cd_type = "global", -- or "local" if you prefer window-local cwd
			sort = true,
			auto_open = false,
			notify_info = true,
			hooks = {}, -- disable all session-related hooks
		})
	end,
}
