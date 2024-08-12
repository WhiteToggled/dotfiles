return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local TSConfig = require("nvim-treesitter.configs")
		TSConfig.setup({
			auto_install = true,
			ensure_installed = { "lua", "c", "cpp" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
