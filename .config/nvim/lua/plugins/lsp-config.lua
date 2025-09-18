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

      -- Lua
      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("lua_ls")

      -- Clang
      vim.lsp.config("clangd", {
        capabilities = capabilities,
      })
      vim.lsp.enable("clangd")

      -- TS/JS (ts-ls)
      vim.lsp.config("tsserver", {
        capabilities = capabilities,
      })
      vim.lsp.enable("tsserver")

      -- Rust
      vim.lsp.config("rust_analyzer", {
        capabilities = capabilities,
      })
      vim.lsp.enable("rust_analyzer")

      -- Python
      vim.lsp.config("pylsp", {
        capabilities = capabilities,
      })
      vim.lsp.enable("pylsp")

      -- Assembly
      -- vim.lsp.config("asm_lsp", {
      --   capabilities = capabilities,
      -- })
      -- vim.lsp.enable("asm_lsp")

      -- Omnisharp for C#
      -- local pid = vim.fn.getpid();
      local omnisharp_path = "/home/whitetoggled/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll";
      vim.lsp.config("omnisharp", {
        cmd = {"dotnet", omnisharp_path},
        -- *.cs is only a workaround
        root_dir = vim.fs.root(0, { "*.sln", "*.csproj", "omnisharp.json", "function.json" }),
        capabilities = capabilities,
      })
    end,
  },
}
