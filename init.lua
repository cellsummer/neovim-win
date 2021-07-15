require('lv-globals')
require('plugins')
--vim.cmd("luafile " .. CONFIG_PATH .. "/lv-config.lua")
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
require('lv-rnvimr')
require('lv-which-key')
require('lv-Fterm')
require('lv-sneak')
-- TODO is there a way to do this without vimscript
-- vim.cmd('source ~/AppData/Local/nvim/vimscript/functions.vim')

-- LSP
require('lsp')
require('lsp.python-ls')
require'lspconfig'.pyright.setup{}

-- Vim commands
-- Note taker
vim.cmd 'autocmd BufWritePost *note-*.md silent !pwsh.exe -nol -nop -noni -File C:/Users/cells/Documents/Github/notetaker/buildNote.ps1 %:p'

-- line numbers
vim.cmd 'set relativenumber'

-- Markdown Preview in Browser
vim.cmd "autocmd BufEnter *.md noremap <F5> :!start msedge %:p<CR>"

-- Default shell
vim.cmd 'set hidden'
-- vim.cmd "set shell=C:\\Progra~1\\WindowsApps\\Microsoft.PowerShell_7.1.3.0_x64__8wekyb3d8bbwe\\pwsh.exe"
-- vim.cmd 'set shellcmdflag=-command'
