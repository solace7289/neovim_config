
-- =========================
-- Basic Neovim Settings
-- =========================

vim.g.mapleader = " " -- Set phím leader key là nút space
vim.wo.number = true -- hiển thị số ở đầu dòng
vim.cmd("syntax on")
vim.opt.clipboard = "unnamedplus" -- Lưu copy, paste vào bộ nhớ đệm
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Hiển thị cặp ngoặc khớp
vim.opt.showmatch = true

-- Khi chèn dấu ngoặc, highlight ngoặc đối
vim.opt.matchtime = 1

-- Khi bấm Tab trong dòng, thụt vào thông minh
vim.opt.smarttab = true

-- Tự động xuống dòng (wrap text)
vim.opt.wrap = true

-- Hiển thị số dòng tương đối (dễ di chuyển)
vim.wo.relativenumber = true

-- Tô sáng dòng hiện tại
vim.opt.cursorline = true

-- Hiển thị dấu cột dọc tại vị trí 80 ký tự (hạn chế code quá dài)
vim.opt.colorcolumn = "80"

-- Hiển thị ký tự đặc biệt (tab, khoảng trắng, xuống dòng)
vim.opt.list = true
vim.opt.listchars = {
  tab = "▸ ",      -- Ký hiệu tab
  trail = "·",     -- Dấu cách dư cuối dòng
  extends = "»",
  precedes = "«"
}

-- Ẩn thanh menu và ruler nếu bạn thích giao diện gọn
vim.opt.showmode = false  -- Không cần hiện -- INSERT -- (vì statusline sẽ lo)
vim.opt.laststatus = 2    -- Luôn hiển thị thanh trạng thái dưới
vim.opt.signcolumn = "yes" -- Luôn hiện cột dấu (để không bị nhảy dòng khi có lỗi)




