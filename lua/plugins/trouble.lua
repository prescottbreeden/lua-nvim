return {
  require('trouble').setup()
  vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", {silent = true, noremap = true})
}
