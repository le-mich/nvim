-- start ocaml language server
require('lspconfig').ocamllsp.setup(require('coq').lsp_ensure_capabilities())

-- indentation
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true

