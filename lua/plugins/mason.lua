return {
  {
    "williamboman/mason.nvim",
    config = function()
      local mason = require("mason")
      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
        automatic_enable = true,
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
}
