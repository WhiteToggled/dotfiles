return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "rust_analyzer" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilites,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})
			lspconfig.pylsp.setup({
				capabilities = capabilities,
			})

            -- local pid = vim.fn.getpid();
            local omnisharp_path = "/home/whitetoggled/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll";
			lspconfig.omnisharp.setup({
                cmd = {"dotnet", omnisharp_path},
                -- *.cs is only a workaround
                root_dir = require("lspconfig.util").root_pattern('*.sln', '*.csproj', 'omnisharp.json', 'function.json'),
				capabilities = capabilities,
			})
		end,
	},
}
