local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Helper function to merge tables
local function merge_tables(base)
  return function (extra)
    local merged = {}
    for k, v in pairs(base) do
      merged[k] = v
    end
    for k, v in pairs(extra) do
      merged[k] = v
    end
    return merged
  end
end

local enhanced_opts = merge_tables(opts)

-- prevents using `dd` on an empty line and overwriting current register
-- [src: https://www.reddit.com/r/neovim/comments/w0jzzv/comment/igfjx5y/?utm_source=share&utm_medium=web2x&context=3]
local function smart_dd()
	if vim.api.nvim_get_current_line():match("^%s*$") then
		return "\"_dd"
    -- check if u are deleting empty line and use black hole register
	else return "dd" end
end

-- remap space as leader key
keymap("", "<Space>", "<Nop>", enhanced_opts({ desc = "NOP" }))
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --

-- Better window navigation --
keymap("n", "<C-h>", "<C-w>h", enhanced_opts({ desc = "move to left buffer" }))
keymap("n", "<C-j>", "<C-w>j", enhanced_opts({ desc = "move to bottom buffer" }))
keymap("n", "<C-k>", "<C-w>k", enhanced_opts({ desc = "move to top buffer" }))
keymap("n", "<C-l>", "<C-w>l", enhanced_opts({ desc = "move to right buffer" }))

-- Resize windows
keymap("n", "<C-Up>", ":resize +2<CR>", enhanced_opts({ desc = "increase vertical size of buffer" }))
keymap("n", "<C-Down>", ":resize -2<CR>", enhanced_opts({ desc = "decrease vertical size of buffer" }))
keymap("n", "<C-Left>", ":vertical resize -2<CR>", enhanced_opts({ desc = "decrease horizontal size of buffer" }))
keymap("n", "<C-Right>", ":vertical resize +2<CR>", enhanced_opts({ desc = "increase horizontal size of buffer" }))
keymap("n", "<C-w><C-w>", "<C-w>=", { noremap = true, desc = "normalize window sizes" })

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", enhanced_opts({ desc = "go to next buffer" }))
keymap("n", "<S-h>", ":bprev<CR>", enhanced_opts({ desc = "go to previous buffer" }))

-- Fun stuff
-- Toggle AST view from treesitter
keymap("n", "<leader>ta", ":TSPlaygroundToggle<cr>", enhanced_opts({ desc = "Explore AST" }))

-- keep cursor in place or in middle
keymap("n", "n", "nzzzv", enhanced_opts({ desc = "search next match" }))
keymap("n", "N", "Nzzzv", enhanced_opts({ desc = "search previous match" }))
keymap("n", "<C-d>", "<C-d>zz", enhanced_opts({ desc = "scroll down" }))
keymap("n", "<C-u>", "<C-u>zz", enhanced_opts({ desc = "scroll up" }))
keymap("n", "J", "mzJ`z", enhanced_opts({ desc = "move next line to current line" }))

-- other
keymap("n", "Q", "<nop>", enhanced_opts({ desc = "NOP" }))                                                         -- don't ever press Q, it's the worst place in the universe
keymap("n", "<C-n>", ":noh<cr>", enhanced_opts({ desc = "disable highlight" }))                                                  -- clear search highlights
keymap("n", "<leader>fs", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "search/replace word under cursor" })
keymap("n", "<leader>?", ":nos botright 85vs ~/.config/nvim/cheats.vim<cr>", enhanced_opts({ desc = "open cheat sheet" }))

keymap("n", "<leader>cr", ":let @+ = expand('%')<cr>", enhanced_opts({ desc = "copy relative path" }))
keymap("n", "<leader>cp", ":let @+ = expand('%:p')<cr>", enhanced_opts({ desc = "copy full path" }))
keymap("n", "<leader>cf", ":let @+ = expand('%:t')<cr>", enhanced_opts({ desc = "copy filename" }))

vim.keymap.set("n", "dd", smart_dd, { noremap = true, expr = true, desc = "delete line" })

-- Insert --
keymap("i", "jk", "<ESC>", enhanced_opts({ desc = "<ESC>" }))

-- Visual --
-- Prevent paste over visual selection from overwriting register
keymap("v", "p", '"_dp', enhanced_opts({ desc = "paste" }))

-- Move line up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", enhanced_opts({ desc = "move line up" }))
keymap("v", "K", ":m '<-2<CR>gv=gv", enhanced_opts({ desc = "move line down" }))

-- Visual Block --
-- Move visual block up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", enhanced_opts({ desc = "move block up" }))
keymap("x", "K", ":m '<-2<CR>gv=gv", enhanced_opts({ desc = "move block down" }))

