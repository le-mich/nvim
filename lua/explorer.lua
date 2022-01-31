-- show git highlighting
vim.g.nvim_tree_git_hl = 1

-- enable nvim-tree file explorer
require('nvim-tree').setup {
	update_cwd = true,
	open_on_tab = true
}

-- set keymap
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true})

