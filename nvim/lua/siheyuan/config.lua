local M = {}

---@class siheyuan.Config
---@field scheme string
---@field colors shiheyuan.Scheme
M.defaults = {
	scheme = "",
	colors = {},
}

---@type siheyuan.Config
M.options = nil

---@param options? siheyuan.Config
function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})

	local scheme = require("siheyuan.colors." .. M.options.scheme)
	M.options.colors = vim.tbl_deep_extend("force", {}, scheme or {}, M.options.colors)
end

return M
