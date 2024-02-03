
-- fetch keymap
local map = vim.api.nvim_set_keymap

-- update leader key to ; and leaderlocal to ,
vim.g.mapleader = ";"
vim.g.maplocalleader = ","

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

require('plugins')

-- Pane switcher
map('n', '<C-j>', '<C-W>j', {})
map('n', '<C-k>', '<C-W>k', {})
map('n', '<C-h>', '<C-W>h', {})
map('n', '<C-l>', '<C-W>l', {})

vim.diagnostic.config({
	virtual_text = false,
	virtual_lines = true,
	severity_sort = {
		"Warning",
		"Information",
		"Hint",
		"Error",
		-- Remove "Error" from the list to disable the 'E' indicator
	},
})



--[[
require('lspconfig').gopls.setup{
  on_attach = function(client, bufnr)
    -- Enable `gd` command for jumping to definition
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

    -- Remove any specific lines disabling diagnostics

    -- Customize diagnostic handling
    vim.api.nvim_command('autocmd CursorHold <buffer> lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false, border="single"})')
    vim.api.nvim_command('autocmd CursorHoldI <buffer> lua vim.lsp.buf.signature_help()')
  end,
}
--]]
--
local lspconfig = require("lspconfig")
lspconfig.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
  on_attach = function(client, bufnr)
    -- Enable `gd` command for jumping to definition
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })


  end,
})


-- HELP
--
-- easymotion
-- ;;b before
-- ;;w next
-- ;;k go to previous lines
-- ;;j go to next lines

-- jump in buffer
-- :b file_name
-- :e path/to/file



