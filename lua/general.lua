-- number of undo levels
vim.o.undolevels = 1000

-- case-insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- remove search result highlight with <esc><esc>
vim.api.nvim_set_keymap('n', '<esc><esc>', ':silent! nohls<cr>', {noremap = true})

-- enable mouse interactions
vim.o.mouse = 'a'

-- split placing
vim.o.splitbelow = true
vim.o.splitright = true

-- copy to clipboard
vim.o.clipboard = vim.o.clipboard .. 'unnamedplus'

-- tabs are four columns wide
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4

-- use tabs for indentation
vim.bo.expandtab = false

-- undo sessions
vim.bo.undofile = true

-- show hybrid line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- wrap lines
vim.o.wrap = true

-- use the number column for the text of wrapped lines
vim.o.cpoptions = vim.o.cpoptions .. 'n'

-- break lines at word
vim.o.linebreak = true

-- highlight matching brace
vim.o.showmatch = true

-- line height
vim.o.linespace = 4

-- enable auto pairs
require('mini.pairs').setup()

-- enable surround pairs
require('mini.surround').setup()

-- enable startup page
require('mini.starter').setup()

-- python executable
vim.g.python3_host_prog = '/usr/bin/python'

-- remove numbers in terminal
vim.api.nvim_command('autocmd TermOpen * set nonumber')
vim.api.nvim_command('autocmd TermOpen * set norelativenumber')

-- return to last edited position when opening a file
vim.api.nvim_command('autocmd BufReadPost * silent! normal! g`"zv')

-- remove trailing whitespaces on write
vim.api.nvim_command('autocmd BufWritePre * %s/\\s\\+$//e')

