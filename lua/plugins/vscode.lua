return {
    "Mofiqul/vscode.nvim",
    opts = {
    },
    config = function (_, opts)
        require("vscode").setup(opts)
        vim.cmd("colorscheme vscode")
    end
}
