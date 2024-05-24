-- NERDTree is a more user-friendly file system tool than vim default
vim.cmd('let NERDTreeShowHidden=1')
vim.cmd('let g:deoplete#enable_at_startup=1')
vim.cmd('autocmd StdinReadPre * let s:std_in=1')
vim.cmd('autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif')

-- would recomend making toggle `<leader>ee` and find `<leader>ef`
-- ee and ef make more sense but `e` is tough with my bent-up finger
vim.keymap.set("n", "<leader>ee", ":NERDTreeToggle<cr>")
vim.keymap.set("n", "<leader>ef", ":NERDTreeFind<cr>")
-- vim.keymap.set("n", "<leader>,m,", ":NERDTreeToggle<cr>")
-- vim.keymap.set("n", "<leader>,mf", ":NERDTreeFind<cr>")
