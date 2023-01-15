-- fetch keymap
local map = vim.api.nvim_set_keymap
-- update leader key to ; and leaderlocal to ,
vim.g.mapleader = ";"
vim.g.maplocalleader = ","


-- NvimTree
map('n', '<LocalLeader>n', [[:NvimTreeToggle<CR>]], {})
map('n', '<LocalLeader>a', [[:NvimTreeFindFile<CR>]], {})

-- Tagbar Toggle to see code structure
map('n', '<space>;', [[:TagbarToggle<CR>]], {})
map('n', '<space>o', [[:TagbarShowTag<CR>]], {})


-- Find
map('n', '<leader>ft', ':TodoTelescope<CR>', {})
map('n', '<leader>ff', ':lua require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})
map('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>', {})
map('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>', {})
map('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>', {})

-- Pane switcher
map('n', '<C-j>', '<C-W>j', {})
map('n', '<C-k>', '<C-W>k', {})
map('n', '<C-h>', '<C-W>h', {})
map('n', '<C-l>', '<C-W>l', {})

-- Tabs
map('n', 'tH', ':tabmove -1<CR>', {})
map('n', 'tL', ':tabmove +1<CR>', {})
map('n', 'tt', ':tabnew<CR>', {})
map('n', 'tl', ':tabnext<CR>', {})
map('n', 'th', ':tabprev<CR>', {})

-- Change q from macro to quit and set Q for macro
map('n', 'q', ':quit<CR>', {})
-- map('n', 'Q', 'q', {})
-- map('n', 'M', '@q', {})
-- map('v', 'M', ':norm @q<CR>', {})

-- Windows
map('n', '<space>x', [[:split<CR>]], {}) -- split horizontaly
map('n', '<space>v', [[:vsplit<CR>]], {}) -- split verticaly
map('n', '<space>c', [[:close<CR>]], {}) -- close pane
map('n', '<space>o', [[:only<CR>]], {}) -- close other panes
map('n', '<space>b', [[:b#<CR>]], {}) -- next buffer
map('n', '<space>n', [[<C-w>T | :tablast]], {}) -- open pane in the new tab
map('n', '<space>s', [[<C-w>x]], {}) -- swap the position

-- Resize
map('n', '<C-Up>', [[:resize +2<CR>]], {})
map('n', '<C-Down>', [[:resize -2<CR>]], {})
map('n', '<C-Left>', [[:vertical resize +2<CR>]], {})
map('n', '<C-Right>', [[:vertical resize -2<CR>]], {})

-- Files
map('n', '<LocalLeader>du', ":saveas <C-r>=expand('%')<CR><Left><Left><Left>", {}) -- duplicate file
map('n', '<LocalLeader>de', ':!rm %<CR>:quit!<CR>', {}) -- delete current file
map('n', '<LocalLeader>y', ':let @+=expand("%:p")<CR>:echo "Absolute pat copied to clipboard."<CR>', {}) -- copy absolute path


-- Miscellaneous
map('n', '<Leader>h', ':HopWord<CR>', {})








-- update save on keader+s
-- map('n', '<C-s>', [[:w<CR>]], {})
-- map('i', '<C-s>', [[<ESC>:w<CR>]], {})

--[=====[ DAP
-- nvim-dap keymappings
-- Press f5 to debug
map('n', '<F5>', [[:lua require'dap'.continue()<CR>]], {})
-- Press CTRL + b to toggle regular breakpoint
map('n', '<C-b>', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
-- Press CTRL + c to toggle Breakpoint with Condition
map('n', '<C-c>', [[:lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>]], {})
-- Press CTRL + l to toggle Logpoint
map('n', '<C-l>', [[:lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Point Msg: '))<CR>]], {})
-- Pressing F10 to step over
map('n', '<F10>', [[:lua require'dap'.step_over()<CR>]], {})
-- Pressing F11 to step into
map('n', '<F11>', [[:lua require'dap'.step_into()<CR>]], {})
-- Pressing F12 to step out
map('n', '<F12>', [[:lua require'dap'.step_out()<CR>]], {})
-- Press F6 to open REPL
map('n', '<F6>', [[:lua require'dap'.repl.open()<CR>]], {})
-- Press dl to run last ran configuration (if you used f5 before it will re run it etc)
map('n', 'dl', [[:lua require'dap'.run_last()<CR>]], {})
-- Press d to toggle debug mode, will remove NvimTree also
map('n', '<C-d>', [[:NvimTreeToggle<CR> :lua require'dapui'.toggle()<CR>]], {})
-- Floatterm Settings
--]=====]



-- Trouble tab bar key TODO DSH: check trouble
-- map('n', '<Leader>t', [[:TroubleToggle<CR>]], {})

-- Open git terminal
-- map('n', '<Leader>g', [[:FloatermNew lazygit<CR>]], {})
