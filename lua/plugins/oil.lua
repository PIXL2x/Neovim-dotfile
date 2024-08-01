local M = {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" }
}

M.config = function ()
	local oil = require("oil")
	oil.setup({
		default_file_explorer = true,
		view_options = {
			show_hidden = true,
			sort = {
				{ "type", "asc" },
				{ "name", "asc" },
			},
		},
	})

	vim.keymap.set("n", "-", "<CMD>Oil<CR>")
end

return M
