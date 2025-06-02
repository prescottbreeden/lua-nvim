return {
  -- Prevent long sessions from losing cwd
  -- This happens daily when gcert expires in 20 hours
  -- Running `gcert` again will restore access to g3
  {
    url = "sso://user/fentanes/gcert.nvim",
    dependencies = {
      "rcarriga/nvim-notify",
    },
    event = #vim.fn.argv() > 0 and "VeryLazy" or "UIEnter",
    opts = {
      check_gcert_interval_ms = 10000,
      autorun_gcert = true,
      split_size = 12,
      show_notifications = true,
      use_nvim_notify = true,
    },
  },

  -- Load google paths like //google/* when opening files.
  -- Also works with `gf`, although in mosts cases,
  -- running `vim.lsp.buf.definition()` (by default mapped to `gd`)
  -- over a path will also take you to the file
  {
    url = "sso://user/fentanes/googlepaths.nvim",
    event = { #vim.fn.argv() > 0 and "VeryLazy" or "UIEnter", "BufReadCmd //*", "BufReadCmd google3/*" },
    opts = {},
  }
}
