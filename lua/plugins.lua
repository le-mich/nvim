local install_path = vim.fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require('paq') {
	-- status line
	'nvim-lualine/lualine.nvim';

	-- buffer line
	'romgrk/barbar.nvim';

	-- wal colorscheme, aid and framework
	'rktjmp/shipwright.nvim';
	'rktjmp/lush.nvim';
	'oncomouse/lushwal.nvim';

	-- smarter line numbers
	'jeffkreeftmeijer/vim-numbertoggle';

	-- startup screen
	'goolord/alpha-nvim';

	-- save sessions
	'rmagatti/auto-session';

	-- file explorer
	'kyazdani42/nvim-tree.lua';

	-- file icons
	'kyazdani42/nvim-web-devicons';

	-- zen mode
	'folke/zen-mode.nvim';

	-- better terminal
	'vimlab/split-term.vim';

	-- code autoformatting
	'Chiel92/vim-autoformat';

	-- mini plugins
	'echasnovski/mini.nvim';

	-- LSP
	'neovim/nvim-lspconfig';

	-- autocompletion
	{'ms-jpq/coq_nvim', branch='coq'};
	{'ms-jpq/coq.artifacts', branch='artifacts'};
}

