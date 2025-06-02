-- Display and search for buganizer bugs
-- go/buganizer.nvim
return {
  url = "sso://user/rprs/buganizer.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    { url = "sso://user/vicentecaycedo/buganizer-utils.nvim" },
  },
  cmd = {
    -- Search buganizer for given query. Defaults to open bugs assigned to you
    "FindBugs",
    -- Show information about the bug under the cursor
    "ShowBugsUnderCursor",
  },
}
