function my_paste(reg)
  return function(lines)
    local content = vim.fn.getreg('"')
    return vim.split(content, "\n")
  end
end

if os.getenv("SSH_TTY") == nil then
  vim.opt.clipboard:append("unnamedplus")
else
  vim.opt.clipboard:append("unnamedplus")
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      --[ 小括号里面的内容可能是毫无意义的，但是保持原样可能看起来更好一点 ]
      ["+"] = my_paste("+"),
      ["*"] = my_paste("*"),
    },
  }
end

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.autoread = true

vim.g.autoformat = false -- 關掉自動格式化

-- 將 Leader 鍵設為空白鍵 (Space)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
