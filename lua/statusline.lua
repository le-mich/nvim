-- configure and enable lualine
require('lualine').setup {
	options = {
		theme = 'lushwal',
		component_separators = '',
		section_separators = ''
	},
	sections = {
		lualine_c = {
			'filename',
			require('auto-session-library').current_session_name
		},
		lualine_x = {
			'fileformat',
			'encoding',
			'filetipe'
		}
	},
	extensions = {
		'nvim-tree'
	}
}

