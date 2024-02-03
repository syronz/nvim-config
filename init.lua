-- plugins bkp1
require('plugins')
-- require('mason-config')
-- require('lsp-settings')
require('code-completion')
require('golang')
require('styling')
-- require('syntax-highlight')
require('file-explorer')
-- require('indent-guide')
require('todo-comments-highlights')
require('autobrackets')

-- make copy / yank global
vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
	virtual_text = false,
	virtual_lines = false,
	signs = { 
		text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
        },
        linehl = {
            [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
        },
        numhl = {
            [vim.diagnostic.severity.WARN] = 'WarningMsg',
        },
	},
})



-- mapping
require('custom-keys')


-- configurations
-- require('troubletab')
-- require('linter')
-- require('hoverdoc')
-- require('debugging')
-- require('statusbar')
-- require('pageheader')
