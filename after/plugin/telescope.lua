local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fc', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>fp', builtin.git_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})
vim.keymap.set('n', '<leader>fg',
function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').setup {
  defaults = {
    mappings = {
      n = {
        ['<C-x>'] = actions.delete_buffer,
      }
    },
  }
}


