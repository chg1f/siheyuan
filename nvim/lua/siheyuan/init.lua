local M = {}

local lush = require("lush")

---@param opts siheyuan.Config
function M.setup(opts)
	require("siheyuan.config").setup(opts)
end

return M
