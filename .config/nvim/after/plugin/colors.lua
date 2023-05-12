-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme hardhacker")
--vim.cmd.colorscheme("nightfly")
vim.api.nvim_set_hl(0, "Normal", { bg = nil })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = nil })
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
