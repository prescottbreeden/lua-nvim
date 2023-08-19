local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- prevents using `dd` on an empty line and overwriting current register
-- [src: https://www.reddit.com/r/neovim/comments/w0jzzv/comment/igfjx5y/?utm_source=share&utm_medium=web2x&context=3]
local function smart_dd()
	if vim.api.nvim_get_current_line():match("^%s*$") then
		return "\"_dd"
    -- check if u are deleting empty line and use black hole register
	else return "dd" end
end

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --

-- Better window navigation --
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize windows
keymap("n", "<C-Up>", ":resize +2<CR>", opts) 
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-w><C-w>", "<C-w>=", { noremap = true})    -- equalize window split sizes

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprev<CR>", opts)

-- Fun stuff
-- Toggle AST view from treesitter
keymap("n", "<leader>ast", ":TSPlaygroundToggle<cr>", opts) 

-- keep cursor in place or in middle
keymap("n", "n", "nzzzv", opts) 
keymap("n", "N", "Nzzzv", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "J", "mzJ`z", opts)

-- other
keymap("n", "Q", "<nop>", opts)                                                         -- don't ever press Q, it's the worst place in the universe
keymap("n", "<C-n>", ":noh<cr>", opts)                                                  -- clear search highlights
keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", {})    -- live search replace on current word
keymap("n", "<leader>?", ":nos botright 85vs ~/.config/nvim/cheats.vim<cr>", opts)      -- open cheat sheet

vim.keymap.set("n", "dd", smart_dd, { noremap = true, expr = true })                    -- prevent blank lines from getting added to clipboard when deleting lines

-- Insert --
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Prevent paste over visual selection from overwriting register
keymap("v", "p", '"_dp', opts)

-- Move line up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Visual Block --
-- Move visual block up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)

