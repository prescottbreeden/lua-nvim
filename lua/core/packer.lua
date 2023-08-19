local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- call PackerSync whenever this file is saved 
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

-- make packer to use a popup window instead of a buffer
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return require("packer").startup(function(use)
  -- [[ Packer ]] --
  use "wbthomason/packer.nvim"

  -- [[ Required by many ]] --
  use "nvim-lua/plenary.nvim"

  -- [[ LSP ]] --
  use {
	  "VonHeikemen/lsp-zero.nvim",
	  branch = "v1.x",
	  requires = {
		  -- LSP Support
		  {"neovim/nvim-lspconfig"},
		  {"williamboman/mason.nvim"},
		  {"williamboman/mason-lspconfig.nvim"},

		  -- Autocompletion
		  {"hrsh7th/nvim-cmp"},
		  {"hrsh7th/cmp-buffer"},
		  {"hrsh7th/cmp-path"},
		  {"saadparwaiz1/cmp_luasnip"},
		  {"hrsh7th/cmp-nvim-lsp"},
		  {"hrsh7th/cmp-nvim-lua"},

		  -- Snippets
		  {"L3MON4D3/LuaSnip"},
		  {"rafamadriz/friendly-snippets"},
	  }
  }

  -- [[ Navigation ]] --
  use "folke/trouble.nvim"              -- error pane
  use "mbbill/undotree"                 -- commit history of undo stack
  use "nvim-telescope/telescope.nvim"   -- grep for files / words / etc
  use "scrooloose/nerdtree"             -- still the best imo
  use "theprimeagen/harpoon"            -- buffer marking and hotlist

  -- [[ UI ]] --
  use "eandrju/cellular-automaton.nvim" -- when you want to watch your buffer blow up
  use "folke/zen-mode.nvim"             -- focus current buffer in quiet screen
  use "mfussenegger/nvim-dap"           -- debugger
  use "norcalli/nvim-colorizer.lua"     -- show color of hexcode on bg
  use "nvim-lualine/lualine.nvim"       -- status bar
  use "nvim-tree/nvim-web-devicons"     -- vscode icon package
  use "rcarriga/nvim-dap-ui"            -- debugger ui
  use "ryanoasis/vim-devicons"          -- part of prettier install / might not be necessary

  -- [ tree-sitter ] --
  use {
			"nvim-treesitter/nvim-treesitter",
			run = function()
				local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
				ts_update()
			end,}
  use "nvim-treesitter/nvim-treesitter-context"
  use "nvim-treesitter/playground" -- interactive AST analysis

  -- [ themes ] --
  use "nanotech/jellybeans.vim" -- my favorite but contrast can be hit and miss
  use "rebelot/kanagawa.nvim"   -- inspired by the Japanese painter
  use "tomasiser/vim-code-dark" -- solid default VSCode-like theme
  use "catppuccin/nvim"         -- decent if looking for something different
  use "folke/tokyonight.nvim"   -- the infamous (very blue)
  use "rose-pine/neovim"        -- lot of purple, turquoise and gold
  use "vim-scripts/Wombat"      -- closest theme to a quokka or dingo

  -- [[ MISC ]] --
  use "jose-elias-alvarez/null-ls.nvim" -- peer dependency
  use "MunifTanjim/prettier.nvim"       -- hook into current project prettier
  use "windwp/nvim-autopairs"           -- auto-pair () [] {} "" ''

  -- [ system clipboard ] --
  use "ojroques/vim-oscyank"  -- system clipboard

  -- [ tpope essentials ] --
  use "tpope/vim-commentary"  -- comment code with motions
  use "tpope/vim-eunuch"      -- vim sugar for the UNIX shell commands
  use "tpope/vim-fugitive"    -- awesome git integration
  use "tpope/vim-repeat"      -- improved . power
  use "tpope/vim-surround"    -- add / replace surrounding pairs


end)

