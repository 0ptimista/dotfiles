-- import vim-slime plugin safely
local status, vimslime = pcall(require, "vim-slime")
if not status then
	return
end

-- make tmux is vim-slime's REPL
vim.g.slime_target = "tmux"
