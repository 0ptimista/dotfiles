-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
local quarto = require("quarto")
quarto.setup()
vim.keymap.set("n", "<leader>qp", quarto.quartoPreview, { silent = true, noremap = true })
-- Markdown Preview
vim.keymap.set("n", "<leader>mp", "<CMD>MarkdownPreview<CR>", { desc = "Preview markdown files in browser" })
