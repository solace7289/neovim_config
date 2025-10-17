
-- =========================
-- nvim-tree Config
-- =========================

vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

require("nvim-tree").setup({
    view = {
        side = "right",
        width = 25,
    },
})



