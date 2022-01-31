-- remove default mode indicator
vim.o.showmode = false

-- remove tilde in EndOfBuffer
vim.cmd('highlight EndOfBuffer ctermfg=black')

-- config and enable lualine
require('lualine').setup {
	options = {
		component_separators = '',
		section_separators = ''
	},
	sections = {
		lualine_c = {
			require('auto-session-library').current_session_name
		}
	}
}

