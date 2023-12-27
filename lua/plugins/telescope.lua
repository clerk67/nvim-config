return {
  "nvim-telescope/telescope.nvim",
  -- replace all Telescope keymaps
  keys = function()
    return {
      { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<C-f>", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
    }
  end,
}
