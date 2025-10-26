return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"RRethy/nvim-treesitter-endwise",
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ":TSUpdate",
		event = "VeryLazy",
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				ensure_installed = {
					"ruby",
					"html",
					"css",
					"scss",
					"javascript",
					"typescript",
					"solidity",
					"yaml",
					"json",
					"lua",
					"vim",
					"query",
					"embedded_template",
					"bash",
					"tsx",
				},

				highlight = {
					enable = true,
				},
				fold = { enable = true },
				indent = { enable = true, disable = { "ruby", "python" } },

				textobjects = {
					swap = {
						enable = true,
						swap_next = {
							["g]f"] = "@function.outer",
						},
						swap_previous = {
							["g[f"] = "@function.outer",
						},
					},
				},

				endwise = { enable = true },
			})

			-- 👇 Add these lines AFTER Treesitter setup
			vim.opt.foldmethod = "expr"
			vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
			vim.opt.foldenable = true
			vim.opt.foldlevel = 99
			vim.opt.foldlevelstart = 99
		end,
	},
}
