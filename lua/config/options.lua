-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false

local opt = vim.opt

opt.colorcolumn = "120" -- set ruler
opt.mouse = "" -- disable mouse
opt.relativenumber = false -- disable relativenumber
opt.tabstop = 4 -- number of spaces tabs count for
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = false
-- set listchars=trail:·,nbsp:◇,tab:│\ ,leadmultispace:\┆\ \ \ ,extends:Îõ,precedes:Îõ
opt.list = true
opt.listchars:append({ trail = "·" })
opt.listchars:append({ nbsp = "◇" })
opt.listchars:append({ tab = "│ " })
opt.listchars:append({ leadmultispace = "┆   " })
opt.listchars:append({ extends = "▸" })
opt.listchars:append({ precedes = "◂" })
