return {
  "williamboman/mason.nvim",
  config = function()
    local mason = require("mason")
    local lsp = require("lsp-zero")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
      automatic_enable = true,
      ensure_installed = {
        "astro",
        "astro-language-server",
        "bashls",
        "beautysh",
        "buf",
        "cucumber_language_server",
        "delve",
        "dockerls",
        "elixirls",
        "eslint",
        "eslint_d",
        "google-java-format",
        "gopls",
        "html",
        "htmlbeautifier",
        "jdtls",
        "jsonls",
        "kotlin_language_server",
        "ktlint",
        "lua_ls",
        "marksman",
        "prettier",
        "prettierd",
        "pylsp",
        "rust_analyzer",
        "rustfmt",
        "shellcheck",
        "solargraph",
        "standardrb",
        "tailwindcss",
        "taplo",
        "tflint",
        "ts_ls",
        "yamlfix",
        'jdtls',
      },
      handlers = {
        lsp.default_setup,
        lua_ls = function()
          local lua_opts = lsp.nvim_lua_ls()
          require("lspconfig").lua_ls.setup(lua_opts)
        end,
        jdtls = function()
          local root_markers = {
            "settings.gradle", "settings.gradle.kts",
            "build.gradle", "build.gradle.kts",
            ".git"
          }

          require("lspconfig").jdtls.setup({
            root_dir = require("lspconfig.util").root_pattern(unpack(root_markers)),
            cmd = {
              "jdtls",
              "-configuration", vim.fn.stdpath("cache") .. "/jdtls/config",
              "-data", vim.fn.stdpath("cache") .. "/jdtls/workspace"
            },
            settings = {
              java = {
                configuration = {
                  updateBuildConfiguration = "interactive", -- or "automatic"
                },
                import = {
                  gradle = {
                    enabled = true,
                  },
                },
              },
            },
          })
        end
      },
    })
  end,
}
