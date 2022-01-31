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

-- helper function
local function file_exists(name)
	local file = io.open(name, 'r')
	if file ~= nil
	then
		io.close(file) return true
	else
		return false
	end
end

-- prepare base buttons
button_table = {
	dashboard.button('n', '  > New file', ':enew<CR>'),
	dashboard.button('r', '  > Create new session', ':SaveSession<CR>'),
	dashboard.button('d', '  > Explore directory', ':NvimTreeToggle<CR>'),
	dashboard.button('s', '  > Settings', ':e $MYVIMRC<CR>'),
	dashboard.button('q', '  > Quit NVIM', ':q<CR>'),
}

-- create session name
file_name = require('auto-session-library').escaped_session_name_from_cwd()
session_name = vim.fn.stdpath('data') .. '/sessions/' .. string.gsub(file_name, '\\', '') .. '.vim'

-- replace 'new session' with 'restore session'
if file_exists(session_name)
then
	button_table[2] = dashboard.button('r', '  > Restore session', ':silent RestoreSession<CR>')
end

-- set button table
dashboard.section.buttons.val = button_table

-- use alpha.fortune as footer text
dashboard.section.footer.val = require('alpha.fortune')

-- send config to alpha
alpha.setup(dashboard.opts)

-- disable folding on alpha buffer
vim.cmd('autocmd FileType alpha setlocal nofoldenable')

