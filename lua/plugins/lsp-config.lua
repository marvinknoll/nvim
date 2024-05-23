return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        standardrb = {},
        -- ruby_ls = {
        --   mason = false,
        --   settings = {
        --     init_options = {
        --       -- Disable this formatter so that standardrb is allowed to run
        --       formatter = nil,
        --     },
        --   },
        -- },
      },
    },
  },
}
