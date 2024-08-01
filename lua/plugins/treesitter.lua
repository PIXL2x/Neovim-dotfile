local M = {
	"nvim-treesitter/nvim-treesitter",
}

M.build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
end

M.config = function ()
	local treesitter = require("nvim-treesitter.configs")
	treesitter.setup({
		ensure_installed = { "lua", "python" },
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true }
	})
end

return M
