-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "tokyonight",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  hl_override = {
    St_NormalMode = { bg = "#31748f" }, -- Rosé Pine 'foam' (cyan/blue accent)
    St_NormalModeSep = { fg = "#31748f" }, -- Rosé Pine 'foam'
    TbLineFill = { bg = "#191724" }, -- Rosé Pine 'base' background
  },
}

M.term = {
  float = {
    relative = "editor",
    row = 0.1,       -- Vertical position offset from top (0.1 = 10%)
    col = 0.05,      -- Horizontal position offset from left
    width = 0.9,     -- Width of the terminal window (0.9 = 90%)
    height = 0.8,    -- Height of the terminal window (0.8 = 80%)
    border = "single",
  },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
