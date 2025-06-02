return {
  {
    url = "sso://user/vvvv/ai.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = "TransformCode",
    keys = {
      { "<leader>ai", "<cmd>TransformCode<cr>", mode = { "n", "v" }, desc = "Transform code" }
    },
  },
}
