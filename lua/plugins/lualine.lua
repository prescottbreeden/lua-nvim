return {
      "nvim-lualine/lualine.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("lualine").setup({
          options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {
              statusline = {},
              winbar = {},
            },
            always_divide_middle = true,
            globalstatus = false,
          },
          sections = {
            lualine_a = {'branch', 'diff', 'diagnostics'},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {},
            lualine_y = {'searchcount', 'progress'},
            lualine_z = {'location'}
          },
          tabline = {},
          winbar = {},
          inactive_winbar = {},
        })
      end,
    }
