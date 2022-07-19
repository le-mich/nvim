-- enable neovim-session
require('auto-session').setup {
	auto_session_create_enabled = false,
	auto_restore_enabled = false
}

-- add things to sessionoptions
vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal'

-- save session keymap
vim.api.nvim_set_keymap('n', '<C-s>', ':SaveSession<CR>', {noremap = true, silent = true})
