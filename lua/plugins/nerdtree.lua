return {
  "scrooloose/nerdtree",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.cmd('let NERDTreeShowHidden=1')

    vim.keymap.set("n", "<leader>,m,", ":NERDTreeToggle<cr>", { desc = "Toggle NERDTree" })
    vim.keymap.set("n", "<leader>,mf", ":NERDTreeFind<cr>", { desc = "Show file in NERDTree" })
  end
}
