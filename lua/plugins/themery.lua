return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{ name = "Gruvbox (morhetz)", colorscheme = "gruvbox" },
				{ name = "Gruvbox (nvim)", colorscheme = "gruvbox" },
				{ name = "Gruvbox Material", colorscheme = "gruvbox-material" },
				{ name = "Catppuccin Mocha", colorscheme = "catppuccin-mocha" },
				{ name = "Tokyo Night", colorscheme = "tokyonight" },
				{ name = "Nord", colorscheme = "nord" },
				{ name = "Monokai", colorscheme = "monokai" },
				{ name = "Monokai Pro", colorscheme = "monokai-pro" },
				{ name = "Dracula", colorscheme = "dracula" },
				{ name = "Oceanic Next", colorscheme = "OceanicNext" },
				{ name = "Nightfox", colorscheme = "nightfox" },
				{ name = "Kanagawa", colorscheme = "kanagawa" },
				{ name = "Solarized", colorscheme = "solarized" },
				{ name = "OneDark", colorscheme = "onedark" },
				{ name = "OneDark Pro", colorscheme = "onedarkpro" },
				{ name = "Everforest", colorscheme = "everforest" },
				{ name = "Edge", colorscheme = "edge" },
				{ name = "Base16 Default", colorscheme = "base16-default-dark" },
				{ name = "Horizon", colorscheme = "horizon" },
				{ name = "Night Owl", colorscheme = "night-owl" },
				{ name = "Ayu Dark", colorscheme = "ayu-dark" },
				{ name = "Palenight", colorscheme = "palenight" },
				{ name = "Moonfly", colorscheme = "moonfly" },
				{ name = "Rose Pine", colorscheme = "rose-pine" },
				{ name = "Iceberg", colorscheme = "iceberg" },
				{ name = "Material", colorscheme = "material" },
				{ name = "VSCode", colorscheme = "vscode" },
			},
			livePreview = true, -- instantly preview on selection
		})
	end,
}
