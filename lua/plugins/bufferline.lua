return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { 
      "nvim-tree/nvim-web-devicons", -- 確保圖示插件被安裝
    },
    lazy = false,
    keys = {
        { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
        { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
        { "<leader>bd", "<cmd>bdelete<cr>", desc = "Delete Buffer" },
    },
    config = function()
      -- 設定 termguicolors 確保顏色正確，不然 bufferline 有時會不顯示
      vim.opt.termguicolors = true
      
      require("bufferline").setup({
        options = {
          -- 讓 Neo-tree 左側對齊
          offsets = {
            {
              filetype = "neo-tree",
              text = "File Explorer",
              highlight = "Directory",
              text_align = "left",
              separator = true,
            },
          },
          -- 樣式設定
          separator_style = "thick",
          -- always_show_bufferline = true, -- 強制永遠顯示
          diagnostics = "nvim_lsp",
        },
      })
    end,
  },
  
  -- 順便補上圖示插件的獨立設定，確保它一定會被載入
  { 
    "nvim-tree/nvim-web-devicons", 
    lazy = true 
  },
}
