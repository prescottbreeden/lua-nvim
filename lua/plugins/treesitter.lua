return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-treesitter/playground", -- interactive AST analysis
  },
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      modules = {},
      ignore_install = {},
      auto_install = true,
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "go",
        "html",
        "java",
        "javascript",
        "jq",
        "json",
        "lua",
        "markdown",
        "query",
        "ruby",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
      },
      with_sync = true,
      sync_install = false,
      highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end,
}
