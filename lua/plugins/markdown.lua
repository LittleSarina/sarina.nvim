return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
    opts = {
      render_modes = true,
      heading = {
        enabled = true,
        icons = { enabled = false },
      },
      checkbox = {
        enabled = true,
        render_modes = false,
      },
      unchecked = {
        -- Replaces '[ ]' of 'task_list_marker_unchecked'.
        icon = "󰄱 ",
        -- Highlight for the unchecked icon.
        highlight = "RenderMarkdownUnchecked",
        -- Highlight for item associated with unchecked checkbox.
        scope_highlight = nil,
      },
      checked = {
        -- Replaces '[x]' of 'task_list_marker_checked'.
        icon = "󰱒 ",
        -- Highlight for the checked icon.
        highlight = "RenderMarkdownChecked",
        -- Highlight for item associated with checked checkbox.
        scope_highlight = nil,
      },
    },
  },
  {
    "shortcuts/no-neck-pain.nvim",
    keys = {
      { "<localleader>N", "<cmd>NoNeckPain<CR>", desc = "Toggle no neck pain" },
    },
    opts = {
      bufferOptionsWo = {
        wrap = true,
      },
    },
  },
}
