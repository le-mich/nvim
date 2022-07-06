-- enable nvim-tree file explorer
require('nvim-tree').setup {
	update_cwd = true,
	open_on_tab = true,
	renderer = {
		highlight_git = true
	}
}

-- tabline integration
require('nvim-tree.events').on_tree_open(function ()
	require('bufferline.state').set_offset(30, "File Tree")
end)

require('nvim-tree.events').on_tree_close(function ()
	require('bufferline.state').set_offset(0)
end)

-- set keymap
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true})
