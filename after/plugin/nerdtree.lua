vim.cmd('let NERDTreeShowHidden=1')
vim.cmd('let g:deoplete#enable_at_startup=1')
vim.cmd('autocmd StdinReadPre * let s:std_in=1')
vim.cmd('autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif')

-- ee and ef make a little more sense but `e` is hard on my busted finger
vim.keymap.set("n", "<leader>,m,", ":NERDTreeToggle<cr>")
vim.keymap.set("n", "<leader>,mf", ":NERDTreeFind<cr>")
