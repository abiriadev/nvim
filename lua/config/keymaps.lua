-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "x" }, "8", "'10j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "9", "'10k'", { expr = true, silent = true })

nvim_create_user_command('W', 'write', {'bang': v:true})

local function ChangeScaleFactor(delta)
	vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end

vim.keymap.set("n", "<C-=>", function()
	ChangeScaleFactor(1.25)
end)

vim.keymap.set("n", "<C-->", function()
	ChangeScaleFactor(1 / 1.25)
end)
