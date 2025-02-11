return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "▏",
        tab_char = "▏",
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      on_open = function(win)
        vim.api.nvim_win_set_config(win, { focusable = false })
      end,
    },
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.routes, {
        {
          filter = {
            event = "msg_show",
            find = "^E486: Pattern not found",
          },
          opts = { replace = true },
          view = "notify",
        },
        {
          filter = {
            event = "msg_show",
            find = "^search hit",
          },
          opts = { skip = true },
        },
      })
    end,
  },
}
