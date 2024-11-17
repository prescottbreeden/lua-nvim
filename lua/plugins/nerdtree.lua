return {
  "scrooloose/nerdtree",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.cmd('let NERDTreeShowHidden=1')

    vim.keymap.set("n", "<leader>nt", ":NERDTreeToggle<cr>", { desc = "Toggle NERDTree" })
    vim.keymap.set("n", "<leader>nf", ":NERDTreeFind<cr>", { desc = "Show file in NERDTree" })
  end
}
