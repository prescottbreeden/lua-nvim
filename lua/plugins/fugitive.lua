local keymap = vim.api.nvim_set_keymap

return {
  "tpope/vim-fugitive",   -- awesome git integration
  config = function ()
    -- stuff
   keymap("n", "<leader>gg", ":Git<CR>", { desc = "Git" })
   keymap("n", "<leader>gt", ":Git blame<CR>", { desc = "Toggle blame layer" })
   keymap("n", "<leader>gd", ":Gdiff<CR>", { desc = "Toggle blame layer" })
  end
}
