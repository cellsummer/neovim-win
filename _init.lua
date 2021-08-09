require('lv-globals')
require('plugins')
require('lv-config')
require('settings')
-- vim.cmd("luafile " .. CONFIG_PATH .. "/lv-config.lua")
-- require('lv-utils')
require('lv-autocommands')
-- require('settings')
require('keymappings')
-- require('lv-nvimtree') -- This plugin must be required somewhere before colorscheme.  Placing it after will break navigation keymappings
require('colorscheme') -- This plugin must be required somewhere after nvimtree. Placing it before will break navigation keymappings
require('lv-galaxyline')
require('lv-comment')
require('lv-compe')
require('lv-barbar')
require('lv-dashboard')
require('lv-telescope')
require('lv-gitsigns')
-- require('lv-treesitter')
require('lv-autopairs')
-- require('lv-rnvimr')
require('lv-which-key')
require('lv-terminal')
require('lv-sneak')
-- require('lv-terminal')
-- TODO is there a way to do this without vimscript
-- vim.cmd('source ~/AppData/Local/nvim/vimscript/functions.vim')

-- LSP
require('lsp')
require('lsp.python-ls')
-- require'lspconfig'.pyright.setup{}

