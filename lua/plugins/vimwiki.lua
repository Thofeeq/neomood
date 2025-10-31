return {
	{
		"vimwiki/vimwiki",
		init = function()
			vim.g.vimwiki_list = {
				{
					path = "~/Documents/vimwiki", -- your vault path
					syntax = "markdown",
					ext = ".md",
				},
			}
			vim.g.vimwiki_global_ext = 0
			vim.g.vimwiki_auto_header = 1
			vim.g.vimwiki_auto_tags = 1
		end,
	},
}
