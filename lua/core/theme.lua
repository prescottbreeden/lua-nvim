function Theme(name)
  vim.cmd('colorscheme ' .. name)
end

-- [ instructions ] --
-- a) uncomment the colorscheme you want set, save and source file with `:so` or
-- b) manually run the `:colorscheme {name}` command
-- note: do _not_ uncomment the `use` strings, those are just for reference to packer.lua

-- use "nanotech/jellybeans.vim"  -- my favorite but contrast can be hit and miss
-- Theme('jellybeans')

-- use "rebelot/kanagawa.nvim"    -- inspired by the Japanese painter
-- Theme('kanagawa')
-- Theme('kanagawa-dragon')       -- 🐲 🐉 🐲
-- Theme('kanagawa-lotus')        -- light theme, parchment paper feel
Theme('kanagawa-wave')         -- if you like blue, strong competitor to tokyonight

-- use "tomasiser/vim-code-dark"  -- default VSCode-like dark theme
-- Theme('vscode')
-- vim.o.background = 'dark'      -- use for dark vscode
-- vim.o.background = 'light'     -- use for light vscode


-- use "catppuccin/nvim"          -- decent if looking for something different
-- Theme('catppuccin')
-- Theme('catppuccin-frappe')
-- Theme('catppuccin-latte')      -- light theme
-- Theme('catppuccin-macchiato')

-- use "folke/tokyonight.nvim"    -- the infamous 
-- Theme('tokyonight')
-- Theme('tokyonight-day')        -- light theme (comment cursor behaves a little odd)
-- Theme('tokyonight-moon')
-- Theme('tokyonight-storm')

-- use "rose-pine/neovim"         -- generally unoffensive themes and something different
-- Theme('rose-pine')
-- Theme('rose-pine-dawn')        -- light theme with golds
-- Theme('rose-pine-moon')

-- use "vim-scripts/Wombat"       -- closest theme to a quokka or dingo 🙃
-- Theme('wombat')
