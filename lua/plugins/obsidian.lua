return {
  {
    "https://github.com/obsidian-nvim/obsidian.nvim",
    version = "*",
    ft = "markdown",
    lazy = false,
    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
      legacy_commands = false,
      workspaces = {
        {
          name = "Sarina Palace",
          path = "~/Documents/obsidian-vaults/Sarina Palace/",
        },
      },
      frontmatter = { enabled = false },
      ui = { enabled = false },
      new_notes_location = "current_dir",
      picker = {
        name = "telescope.nvim"
      }
    },
  },
  {
    "folke/snacks.nvim",
    ---@module 'snacks'
    ---@type snacks.Config
    opts = {
      image = {
        -- TODO: Find whar SRC means
        resolve = function (path, src)
          local api = require("obsidian.api")
          if api.path_is_note(path) then
            return api.resolve_attachment_path(src)
          end
        end
      }
    },
  }
}
