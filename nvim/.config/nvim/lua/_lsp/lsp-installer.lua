local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("_lsp.handlers").on_attach,
		capabilities = require("_lsp.handlers").capabilities,
	}

  -- Still not yet understand how to structure the block of lspconfig
  -- this below block is to stop lsp when the file is helm

  if server.name == "yamlls" then
    local yamlls_opts = require("_lsp.settings.yamlls")
		opts = vim.tbl_deep_extend("force", yamlls_opts, opts)
  end

	-- if server.name == "jsonls" then
	-- 	local jsonls_opts = require("_lsp.settings.jsonls")
	-- 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	-- end

	if server.name == "sumneko_lua" then
		local sumneko_opts = require("_lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	if server.name == "terraformls" then
		local terraformls_opts = require("_lsp.settings.terraformls")
		opts = vim.tbl_deep_extend("force", terraformls_opts, opts)
	end


	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
