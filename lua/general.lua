-- number of undo levels
vim.o.undolevels = 1000

-- case-insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- remove search result highlight with <esc><esc>
vim.api.nvim_set_keymap('n', '<esc><esc>', ':silent! nohls<CR>', {noremap = true, silent = true})

-- enable mouse interactions
vim.o.mouse = 'a'

-- split placing
vim.o.splitbelow = true
vim.o.splitright = true

-- use zsh as shell
vim.o.shell = 'zsh'

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

-- python executable
vim.g.python3_host_prog = '/usr/bin/python'

-- enable auto pairs
require('mini.pairs').setup()

-- enable surround pairs
require('mini.surround').setup()

-- enable autocomment
require('mini.comment').setup()

-- remove numbers in terminal
vim.cmd('autocmd TermOpen * set nonumber')
vim.cmd('autocmd TermOpen * set norelativenumber')

-- return to last edited position when opening a file
vim.cmd('autocmd BufReadPost * silent! normal! g`"zv')

-- remove trailing whitespaces on write
vim.cmd('autocmd BufWritePre * %s/\\s\\+$//e')

