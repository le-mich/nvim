-- enable alpha startup
local alpha = require('alpha')

-- setup alpha dashboard theme as base
local dashboard = require('alpha.themes.dashboard')

-- set header ASCII art
dashboard.section.header.val = {
	'                                                     ',
	'  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
	'  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
	'  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
	'  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
	'  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
	'  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
	'                                                     ',
}

-- set available buttons
dashboard.section.buttons.val = {
	dashboard.button('n', '  > New file', ':enew<CR>'),
	dashboard.button('r', '  > Restore session', ':RestoreSession<CR>'),
	dashboard.button('d', '  > Explore directory', ':NvimTreeOpen<CR>'),
	dashboard.button('s', '  > Settings', ':e $MYVIMRC<CR>'),
	dashboard.button('q', '  > Quit NVIM', ':q<CR>'),
}

-- use alpha.fortune as footer text
dashboard.section.footer.val = require('alpha.fortune')

-- send config to alpha
alpha.setup(dashboard.opts)

-- disable folding on alpha buffer
vim.cmd('autocmd FileType alpha setlocal nofoldenable')

