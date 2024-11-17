return {
  "mbbill/undotree",
  dependencies={
    "kyazdani42/nvim-web-devicons"
  },
  config = function()
    vim.keymap.set("n", "<leader>fu", "<cmd>Telescope undo<CR>", { desc = "Search undo stack" })
  end,
}
