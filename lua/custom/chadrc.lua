---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "oxocarbon",
  theme_toggle = { "onedark", "one_light" },


  hl_override = highlights.override,
  hl_add = highlights.add,
}

vim.api.nvim_set_hl(0, "Comment", { fg = "#999999", italic = true})

vim.api.nvim_set_hl(0, "@comment", { link = "Comment"})

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
