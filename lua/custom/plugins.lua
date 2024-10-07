local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "rust-analyzer",
        "codelldb",
        "pyright",
        "mypy",
        "ruff",
        "black"
      }
    }
  },
  {
    "simrat39/rust-tools.nvim",
    opts = function()
      return require "custom.configs.rust-tools"
    end
  },
}
return plugins
