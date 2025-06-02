return {
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },

  -- [[ THEMES ]] --
  "nvim-tree/nvim-web-devicons", -- vscode icon package
  "nanotech/jellybeans.vim",     -- my favorite but contrast can be hit and miss
  "rebelot/kanagawa.nvim",       -- inspired by the Japanese painter
  "catppuccin/nvim",
  'Mofiqul/vscode.nvim',
  "catppuccin/nvim",       -- decent if looking for something different
  "folke/tokyonight.nvim", -- the infamous (very blue)
  "rose-pine/neovim",      -- lot of purple, turquoise and gold
  "vim-scripts/Wombat",    -- closest theme to a quokka or dingo

  -- [[ MISC ]] --
  "slim-template/vim-slim",     -- slim highlighting
  "ojroques/vim-oscyank",       -- system clipboard

  -- [[ TPOPE ]] --
  "tpope/vim-commentary", -- comment code with motions
  "tpope/vim-eunuch",     -- vim sugar for the UNIX shell commands
  "tpope/vim-repeat",     -- improved . power
  "tpope/vim-surround",   -- add / replace surrounding pairs
  { import = 'plugins.google' },
}
