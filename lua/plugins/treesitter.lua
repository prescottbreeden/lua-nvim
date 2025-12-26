return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  priority = 1000,
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-treesitter/playground",
  },
  build = function()
    vim.cmd("TSUpdate")
  end,
  config = function()
    require("nvim-treesitter.configs").setup({
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
        "regex",
        "ruby",
        "rust",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
      },
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
