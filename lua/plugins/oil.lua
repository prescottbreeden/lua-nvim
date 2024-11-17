return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      columns = { "icon" },
      keymaps = {
        ["<C-h>"] = false,
      },
      view_options = {
        show_hidden = true,
      },
    })
    vim.cmd('autocmd StdinReadPre * let s:std_in=1')
    vim.cmd('autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Oil | endif')

    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent dir" })
  end,
}
