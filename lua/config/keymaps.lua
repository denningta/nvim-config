-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-t>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<C-n>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<C-c>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<C-s>", function()
  ui.nav_file(4)
end)

-- Nvim Notify
local telescope = require("telescope")

vim.keymap.set("n", "<leader>uN", function()
  telescope.extensions.notify.notify()
end)

--Tmux Navigation
local nvim_tmux_nav = require("nvim-tmux-navigation")
vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

-- LuaSnip
local ls = require("luasnip")

-- <Ctrl-K> for expanding
vim.keymap.set({ "i" }, "<C-K>", function()
  ls.expand()
end, { silent = true })

-- <Ctrl-L> for jumping forward
vim.keymap.set({ "i", "s" }, "<C-L>", function()
  ls.jump(1)
end, { silent = true })

-- <Ctrl-J> for jumping backward
vim.keymap.set({ "i", "s" }, "<C-J>", function()
  ls.jump(-1)
end, { silent = true })

-- <Ctrl-E> for changing the active choice
vim.keymap.set({ "i", "s" }, "<C-E>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })
