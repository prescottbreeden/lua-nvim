return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "ThePrimeagen/harpoon",
    "debugloop/telescope-undo.nvim",
    "joshmedeski/telescope-smart-goto.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-live-grep-args.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>fv', builtin.git_files, { desc = "Search version control files" })
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Search find files" })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Search buffers" })
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "Search keymaps" })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Search live grep" })

    vim.keymap.set('n', '<leader>f?',
      function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end, { desc = "Search Grep with filter" })

    vim.keymap.set('n', '<leader>f/', builtin.current_buffer_fuzzy_find, { desc = "Search current buffer" })

    local telescope = require("telescope")
    local telescopeConfig = require("telescope.config")

    -- Clone the default Telescope configuration
    local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

    -- I want to search in hidden/dot files.
    table.insert(vimgrep_arguments, "--hidden")
    -- I don't want to search in the `.git` directory.
    table.insert(vimgrep_arguments, "--glob")
    table.insert(vimgrep_arguments, "!**/.git/*")

    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        -- `hidden = true` is not supported in text grep commands.
        vimgrep_arguments = vimgrep_arguments,
        path_display = { "truncate" },
        mappings = {
          n = {
            -- ["<C-w>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
          i = {
            ["<C-j>"] = actions.cycle_history_next,
            ["<C-k>"] = actions.cycle_history_prev,
            -- ["<C-w>"] = actions.send_selected_to_qflist + actions.open_qflist,
				    ["<C-s>"] = actions.cycle_previewers_next,
				    ["<C-a>"] = actions.cycle_previewers_prev,
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true, -- will still show the inside of `.git/` as it's not `.gitignore`d.
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
      },
      extensions = {
        undo = {
          use_delta = true,
          use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
          side_by_side = false,
          vim_diff_opts = { ctxlen = vim.o.scrolloff },
          entry_format = "state #$ID, $STAT, $TIME",
          mappings = {
            i = {
              ["<C-cr>"] = require("telescope-undo.actions").yank_additions,
              ["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
              ["<cr>"] = require("telescope-undo.actions").restore,
            },
          },
        },
      },
    })

    require("telescope").load_extension("fzf")
    require("telescope").load_extension("ui-select")
    require("telescope").load_extension("undo")
    require("telescope").load_extension("advanced_git_search")
    require("telescope").load_extension("live_grep_args")
    require("telescope").load_extension("noice")

    -- require("telescope").load_extension("neoclip")
    -- require("telescope").load_extension("colors")

  end
}
