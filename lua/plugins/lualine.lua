local M = {
	"nvim-lualine/lualine.nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons' }
}

M.config = function ()
	local lualine = require("lualine")
	lualine.setup({
		options = {
			theme = "gruvbox-material"
		},
	})
end

return M
