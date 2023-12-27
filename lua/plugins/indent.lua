return {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        char = "▏",
        tab_char = "▏",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      symbol = "▏",
      options = { try_as_border = true },
    },
  },
}
