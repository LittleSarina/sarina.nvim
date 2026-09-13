require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Keybind to open Lazygit in a tailored NvChad floating window
-- map("n", "<leader>gg", function()
map({ "n", "t" }, "<A-g>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "lazyGitTerm",
    cmd = "lazygit", -- Spawns lazygit inside this specific instance
    -- Custom sizing applied directly to this specific bind
    -- width = 0.9,     -- 85% of screen width
    -- height = 0.8,    -- 85% of screen height
  }
end, { desc = "Toggle Lazygit Floating Window" })

-- TODO Comments keymaps
map("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

map("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords

map("n", "]t", function()
  require("todo-comments").jump_next { keywords = { "ERROR", "WARNING" } }
end, { desc = "Next error/warning todo comment" })

map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Todo" })

-- map({ "n" }, "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
-- map({ "n" }, "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
-- map({ "n" }, "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
-- map({ "n" }, "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
