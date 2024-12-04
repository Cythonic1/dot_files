-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
-- Set tabstop to 4 spaces
vim.opt.tabstop = 4

-- Set shiftwidth to 4 spaces
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- Enable smart indenting
vim.opt.smartindent = true

-- Enable auto indenting
vim.opt.autoindent = true

--local api = require("supermaven-nvim.api");

--api.start()

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true
lvim.plugins = {
    { "catppuccin/nvim", name = "catppuccin-mocha", priority = 1000 },
    "supermaven-inc/supermaven-nvim",
    config = function()
        require("supermaven-nvim").setup({
        })
    end,
    "monkoose/neocodeium",
  event = "VeryLazy",
  config = function()
    local neocodeium = require("neocodeium")
    neocodeium.setup()
    neocodeium.enable =true
    vim.keymap.set("i", "<A-f>", neocodeium.accept)
  end,
}

lvim.colorscheme = "catppuccin-mocha"
lvim.transparent_window = true
vim.opt.clipboard = "unnamedplus"


