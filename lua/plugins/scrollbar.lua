local M = {
	"petertriho/nvim-scrollbar",
}

M.config = function ()
	local scrollbar = require("scrollbar")
	scrollbar.setup({
		show = true,
	})
end

return M
