-- HELP: :help nvim-tree-setup
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
	open_on_setup = true,
	disable_netrw = false,
	root_dirs = {},
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "-",
				},
			},
		},
	},
})