return {
      "folke/zen-mode.nvim",
  config = function()
    vim.keymap.set("n", "<leader>zz", function()
        require("zen-mode").setup {
            window = {
                width = 80,
                options = { }
            },
        }
        require("zen-mode").toggle()
        vim.wo.wrap = false
        vim.wo.number = false
        vim.wo.rnu = false
        vim.opt.colorcolumn = "0"
    end)
  end,
      opts = {
        on_open = function(_)
          vim.opt.nu = false
          vim.opt.relativenumber = false
          require("noice").disable()
          require("ufo").disable()
          vim.o.foldcolumn = "0"
          vim.o.foldenable = false
        end,
        on_close = function()
          vim.opt.nu = true
          vim.opt.relativenumber = true
          require("noice").enable()
          require("ufo").enable()
          vim.o.foldcolumn = "1"
          vim.o.foldenable = true
        end,
      },
    }
