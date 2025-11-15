return {
	{ -- git plugin
		"tpope/vim-fugitive",
	},
	{ -- show css Colors
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({})
		end,
	},
}
