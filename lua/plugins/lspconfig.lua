local M = {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
}

M.config = function()
	local lspconfig = require("lspconfig")
	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	lspconfig["pyright"].setup {
		capabilities = capabilities,
	}
	lspconfig["lua_ls"].setup {
		capabilities = capabilities,
	}
	lspconfig["zls"].setup {
		capabilities = capabilities,
	}
end

return M
