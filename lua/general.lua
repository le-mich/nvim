-- number of undo levels
vim.o.undolevels = 1000

-- undo sessions
vim.bo.undofile = true

-- case-insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- remove search result highlight with <esc><esc>
vim.api.nvim_set_keymap('n', '<esc><esc>', ':silent! nohls<CR>', {noremap = true, silent = true})

-- enable mouse interactions
vim.o.mouse = 'a'

-- copy to clipboard
vim.o.clipboard = vim.o.clipboard .. 'unnamedplus'

-- return to last edited position when opening a file
vim.api.nvim_command('autocmd BufReadPost * silent! normal! g`"zv')

