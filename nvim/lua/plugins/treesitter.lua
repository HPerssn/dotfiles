return {

    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlight = {
		enable = true,
	    },
	    indent = { enable = true },
	    autotag = { enable = true },
	    ensure_installed = {
		"lua",
		"python",
		"vue",
		"tsx",
		"typescript",
		"javascript",
		"html",
		"css",
		"php",
		"c_sharp",
		"go",
	    },
	    auto_install = false,
	})
    end
}
