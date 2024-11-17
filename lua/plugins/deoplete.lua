return {
  "Shougo/deoplete.nvim",
  build = ":UpdateRemotePlugins",
  config = function()
    vim.cmd('let g:deoplete#enable_at_startup=1')
  end
}
