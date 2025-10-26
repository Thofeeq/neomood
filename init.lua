vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
	lazy = true,
	change_detection = {
		enabled = false,
	},
})

require("neomood.options").set()

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.conceallevel = 2
	end,
})

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- General fold settings
vim.opt.foldenable = true -- enable folding
vim.opt.foldlevel = 99 -- open all folds by default
vim.opt.foldlevelstart = 99 -- start with all folds open
vim.opt.foldnestmax = 3 -- limit nested folds
vim.opt.foldminlines = 1 -- minimal lines to create a fold

vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = function()
		require("neomood.autocmds").set()
		require("neomood.mappings").set()
	end,
})
