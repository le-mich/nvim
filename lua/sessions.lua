-- enable neovim-session
require('auto-session').setup {
	auto_restore_enabled = false,
	silent = true
}

-- add things to sessionoptions
vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal'

