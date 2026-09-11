return {
  {
    "https://github.com/obsidian-nvim/obsidian.nvim",
    opts = {

      legacy_commands = false, -- this will be removed in 4.0.0
      workspaces = {
        {
          name = "personal",

          path = "~/vaults/personal",
        },
        {
          name = "work",
          path = "~/vaults/work",
        },
      },
    },
  },
}
