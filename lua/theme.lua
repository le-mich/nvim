-- remove default mode indicator
vim.o.showmode = false

-- lushwal configuration
vim.g.lushwal_configuration = {
	addons = {
		lualine = true,
		barbar = true,
		native_lsp = true,
		nvim_tree_lua = true
	}
}

-- set colorscheme
vim.cmd('colorscheme lushwal')

-- remove tilde in EndOfBuffer
vim.cmd('highlight EndOfBuffer ctermfg=black guifg=bg')
require('lushwal').add_reload_hook('highlight EndOfBuffer ctermfg=black guifg=bg')

