vim.cmd('let NERDTreeShowHidden=1')
vim.cmd('let g:deoplete#enable_at_startup=1')
vim.cmd('autocmd StdinReadPre * let s:std_in=1')
vim.cmd('autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif')

vim.keymap.set("n", "<leader>ee", ":NERDTreeToggle<cr>")
vim.keymap.set("n", "<leader>ef", ":NERDTreeFind<cr>")
