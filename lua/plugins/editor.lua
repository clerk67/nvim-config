return {
  {
    "folke/flash.nvim",
    opts = { labels = "" },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = function()
      return {
        { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<C-f>", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
      }
    end,
  },
}
