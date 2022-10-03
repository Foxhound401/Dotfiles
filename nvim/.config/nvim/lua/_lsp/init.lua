local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("_lsp.lsp-installer")
require("_lsp.handlers").setup()
require("_lsp.gd")
--[[ require("_lsp.null-ls") ]]
