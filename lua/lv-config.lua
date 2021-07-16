-- general
O.auto_complete = true
O.colorscheme = 'lunar'
O.auto_close_tree = 0
O.wrap_lines = false
O.timeoutlen = 100

-- Move to end of text after yank or paste
vim.api.nvim_set_keymap('v', 'y', 'y`]', { noremap = true})
vim.api.nvim_set_keymap('n', 'p', 'p`]', { noremap = true})
vim.api.nvim_set_keymap('v', 'p', 'p`]', { noremap = true})
-- End of Config  
