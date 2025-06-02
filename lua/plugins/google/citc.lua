-- Create new piper and fig workspaces
-- go/neocitc
return {
  url = "sso://team/neovim-dev/neocitc",
  opts = {},
  cmd = { "CitcCreateWorkspace", "CitcCreateFigWorkspace" },
  keys = {
    {
      "<leader>ccn",
      ":CitcCreateWorkspace ",
      desc = "Create new citc piper workspace"
    },
    {
      "<leader>ccf",
      ":CitcCreateFigWorkspace ",
      desc = "Create new citc fig workspace"
    },
  },
}
