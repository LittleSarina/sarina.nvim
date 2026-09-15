-- NOTE: figure out why the hell those things are not installing
return {
  {
    "williamboman/mason.nvim",
    Lazy = false,
    opts = {
      ensure_installed = {
        -- General purpose
        "prettier",

        -- Lua
        "lua-language-server",
        "stylua",

        -- C#
        "csharp-language-server",
        "xmlformatter",
        "roslyn_ls",
        "bicep-lsp",
        "netcoredbg",

        -- General frontend
        "html-lsp",
        "css-lsp",
        "csharpier",


        -- Config files
        "tombi",
        "json-lsp",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "c_sharp",
        "bicep",
      },
    },
  },
}
