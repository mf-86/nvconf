-- [[ vim options ]]
-- See `:help vim.o`

-- Set highlight on search
-- vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on (left) by default
vim.wo.signcolumn = "yes"

-- Decrease update time
-- vim.o.updatetime = 250
-- vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- set comment color
vim.api.nvim_set_hl(0, 'Comment', {fg='#CDCCA5'})

-- split direction
vim.o.splitbelow = true
vim.o.splitright = true

-- tabs
-- vim.o.shiftwidth = 4
-- vim.o.smarttab = true
-- vim.o.expandtab = true
-- vim.o.tabstop = 8
-- vim.o.softtabstop = 0
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- vim.o.smartindent = true

-- wrap
-- vim.wo.wrap = false

-- cursor line
vim.opt.cursorline = true

-- pop up menu height
vim.opt.pumheight = 10

-- more space in command line
vim.opt.cmdheight = 1

-- scroll
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- resize windows after neotree opens
vim.opt.equalalways = false

-- Trailing Whitespace
vim.api.nvim_set_hl(0, 'Extrawhitespace', { fg = "#FF0000", bg = "#00FF00" })
vim.cmd([[ call matchadd('ExtraWhitespace', '\v\s+$') ]])
-- match ExtraWhitespace /\s\+$/
