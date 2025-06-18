return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local jdtls = require("jdtls")

    -- Get the project name automatically
    local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
    local workspace_dir = vim.fn.stdpath("cache") .. "/jdtls-workspace/" .. project_name

    local config = {
      cmd = {
        "jdtls",
        "-configuration", workspace_dir .. "/config",
        "-data", workspace_dir,
      },

      root_dir = require("jdtls.setup").find_root({ "gradlew", "pom.xml", ".git" }),

      settings = {
        java = {
          signatureHelp = { enabled = true },
          contentProvider = { preferred = "fernflower" },
        },
      },

      init_options = {
        bundles = {},
      },
    }

    jdtls.start_or_attach(config)
  end

}
-- return {
--   "mfussenegger/nvim-jdtls",
--   config = function()
--     local config = {
--       cmd = { '/path/to/jdt-language-server/bin/jdtls' },
--       root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
--     }
--     require('jdtls').start_or_attach(config)
--   end,
-- }
