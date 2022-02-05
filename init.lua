require("plugins")
require("options")
require("keymappings")
require("lsp")
require("nvim-cmp")
--require 'treesitter'
-- Other configs in vimscript
vim.cmd("source " .. vim.fn.stdpath("config") .. "/lua/myConfigs.vim")

--require 'myConfigs'
