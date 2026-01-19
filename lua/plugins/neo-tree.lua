return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- 需要安裝 Nerd Font 字型
      "MunifTanjim/nui.nvim",
    },
    keys = {
      -- 設定 Space + e 開啟/關閉檔案總管
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Explorer NeoTree" },
    },
    opts = {
      window = {
        position = "left", -- 靠左顯示
        width = 30,        -- 寬度
      },
      filesystem = {
        follow_current_file = { enabled = true }, -- 當你切換檔案時，樹狀圖會自動跳到該檔案
      },
    },
  },
}
