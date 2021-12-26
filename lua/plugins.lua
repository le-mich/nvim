local install_path = vim.fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require('paq') {
	-- lightline
	'itchyny/lightline.vim';

	-- colorscheme
	'haishanh/night-owl.vim';

	-- line numbers
	'jeffkreeftmeijer/vim-numbertoggle';

	-- better terminal
	'vimlab/split-term.vim';

	-- code autoformatting
	'Chiel92/vim-autoformat';

	-- auto pairs
	'echasnovski/mini.nvim';

	-- LSP
	'neovim/nvim-lspconfig';

	-- autocompletion
	{'ms-jpq/coq_nvim', branch='coq'};
	{'ms-jpq/coq.artifacts', branch='artifacts'};
}

