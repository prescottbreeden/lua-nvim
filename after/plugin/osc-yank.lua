vim.g.oscyank_term = 'tmux'

function Yank_post()
  if(
    vim.v.event.regname == "" or
    vim.v.event.regname == "*" or
    vim.v.event.regname == "+" or
    vim.v.event.regname == "0"
    ) then 
    vim.cmd('execute "OSCYankRegister +"')
  end
end

vim.api.nvim_exec([[
  augroup clippy
    autocmd!
    autocmd TextYankPost * lua Yank_post()
  augroup END
]], false)
