-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.guifont = [[jbcat:h10]]

-- neovide option
vim.g.neovide_floating_blur_amount_x = 5.0
vim.g.neovide_floating_blur_amount_y = 5.0

vim.g.neovide_remember_window_size = 1

vim.g.neovide_hide_mouse_when_typing = true

vim.g.neovide_cursor_vfx_mode = "railgun"

-- vim.g.neovide_cursor_vfx_opacity = 1000 --300
-- vim.g.neovide_cursor_vfx_particle_density = 300
-- vim.g.neovide_cursor_vfx_particle_curl = 0
-- vim.g.neovide_cursor_vfx_particle_lifetime = 0.4
-- vim.g.neovide_cursor_vfx_particle_phase = 0

vim.g.neovide_scale_factor = 1.0

vim.opt.conceallevel = 0
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
