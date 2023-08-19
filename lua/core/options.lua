-- :help options
local options = {
  backup = false,                           -- creates a backup file
  clipboard = "unnamedplus",                -- allows neovim access to system clipboard
  cmdheight = 2,                            -- more space for display messages
  completeopt = { "menuone", "noselect" },  -- mostly just for cmp
  conceallevel = 0,                         -- so that `` is visible in markdown files
  cursorline = true,                        -- highlight the current line
  cursorlineopt = "line,number",            -- highlight both line and number
  expandtab = true,                         -- expand tab into spaces
  fileencoding = "utf-8",                   -- encoding that is written to a file
  hlsearch = true,                          -- highlight all matches on previous search pattern
  ignorecase = true,                        -- ignore case in search patterns
  incsearch = true,                         -- show incremental highlights as typing search
  mouse = "a",                              -- allow the mouse to be used in neovim
  number = true,                            -- set numbered lines
  numberwidth = 4,                          -- set number column width
  pumheight = 10,                           -- pop up menu height
  relativenumber = true,                    -- use relative number lines
  scrolloff = 8,                            -- number of lines to allow scrolled off buffer
  shiftwidth = 2,                           -- the number of spaces inserted for each indentation
  showmode = false,                         -- we don't need to see things like -- INSERT -- anymore
  signcolumn = "yes",                       -- always show the sign column so text doesn't shift
  smartcase = true,                         -- override ignorecase if there's a captial letter
  smartindent = true,                       -- make indenting smarter again
  splitbelow = true,                        -- force all horizontal splits to go below current window
  splitright = false,                       -- force all vertical splits to go below current window
  swapfile = false,                         -- creates a swapfile
  tabstop = 2,                              -- insert 2 spaces for a tab
  termguicolors = true,                     -- set termguicolors to enable highlight groups
  undofile = true,                          -- enable persistent undo
  updatetime = 300,                         -- faster completion (4000ms default)
  wrap = false,                             -- fuck text wrapping
  writebackup = false,                      -- some servers have issues with backup files
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.cmd 'colorscheme jellybeans'         -- set in lua:theme
vim.cmd [[set iskeyword+=-]]                -- treat kabob-case like one word

