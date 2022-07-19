local map  = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- navigate windows with ALT+{h,j,k,l} in any mode
-- from terminal
map('t', '<A-h>', '<C-\\><C-N><C-w>h', opts)
map('t', '<A-j>', '<C-\\><C-N><C-w>j', opts)
map('t', '<A-k>', '<C-\\><C-N><C-w>k', opts)
map('t', '<A-l>', '<C-\\><C-N><C-w>l', opts)

-- from insert
map('i', '<A-h>', '<C-\\><C-N><C-w>h', opts)
map('i', '<A-j>', '<C-\\><C-N><C-w>j', opts)
map('i', '<A-k>', '<C-\\><C-N><C-w>k', opts)
map('i', '<A-l>', '<C-\\><C-N><C-w>l', opts)

-- from normal
map('n', '<A-h>', '<C-w>h', opts)
map('n', '<A-j>', '<C-w>j', opts)
map('n', '<A-k>', '<C-w>k', opts)
map('n', '<A-l>', '<C-w>l', opts)

-- exit terminal insert mode
map('t', '<A-e>', '<C-\\><C-N>', opts)
