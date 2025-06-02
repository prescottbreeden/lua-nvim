-- Show comments from critique
-- go/google-comments-nvim
return {
  url = "sso://user/chmnchiang/google-comments",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  main = "google.comments",
  opts = {
    display = {
      floating = true,
    },
  },
  keys = {
    {
      "<leader>c[",
      "<cmd>lua require('google.comments').goto_prev_comment()<cr>",
      desc = "Goto previous comment"
    },
    {
      "<leader>c]",
      "<cmd>lua require('google.comments').goto_next_comment()<cr>",
      desc = "Goto next comment"
    },
    {
      "<leader>ct",
      "<cmd>lua require('google.comments').toggle_line_comments()<cr>",
      desc = "Toggle line comments"
    },
    {
      "<leader>ca",
      "<cmd>lua require('google.comments').show_all_comments()<cr>",
      desc = "Show all comments"
    },
  },
}
