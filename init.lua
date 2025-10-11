-- =========================
-- Basic Neovim Config
-- =========================

-- Set leader key
vim.g.mapleader = " "

-- Line numbers
vim.wo.number = true

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Tabs & indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- =========================
-- Plugin Manager (packer)
-- =========================

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd("packadd packer.nvim")
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    -- File explorer
    use({
        "nvim-tree/nvim-tree.lua",
        requires = { "nvim-tree/nvim-web-devicons" },
    })

    -- Status line
    use("nvim-lualine/lualine.nvim")

    if packer_bootstrap then
        require("packer").sync()
    end
end)

-- =========================
-- Plugin Configurations
-- =========================

-- nvim-tree
vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
require("nvim-tree").setup({
    view = {
        side = "right",
        width = 35,
    },
})

-- lualine
require("lualine").setup({
    options = {
        theme = "gruvbox", -- bạn có thể đổi sang 'auto' nếu chưa cài theme
        section_separators = "",
        component_separators = "",
    },
})



















