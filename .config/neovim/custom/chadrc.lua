local M = {}

local override = require("custom.override")

M.ui = {
	theme = "tokyonight",
}

M.plugins = {

	override = {
		["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["williamboman/mason.nvim"] = override.mason,
	},

	user = require("custom.plugins"),
}

return M
