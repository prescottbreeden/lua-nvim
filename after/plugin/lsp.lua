local lsp = require("lsp-zero")
local keymap = vim.keymap.set

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings,
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  keymap("n", "gd", function() vim.lsp.buf.definition() end, opts)
  keymap("n", "gr", function() vim.lsp.buf.references() end, opts)
  keymap("n", "K", function() vim.lsp.buf.hover() end, opts)
  keymap("n", "<leader>qf", function() vim.lsp.buf.code_action() end, opts)
  keymap("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  keymap("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

  -- keymap("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  -- keymap("n", "<leader>fa", function() vim.diagnostic.open_float() end, opts)
  -- keymap("n", "<C-[>", function() vim.diagnostic.goto_next() end, opts)
  -- keymap("n", "<C-]>", function() vim.diagnostic.goto_prev() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true -- show error text right screen
})

