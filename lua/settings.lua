vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set inccommand=split') -- Make substitution work in realtime
vim.o.hidden = O.hidden_files -- Required to keep multiple buffers open multiple buffers
vim.o.title = true
-- TERMINAL = vim.fn.expand('$TERMINAL')
-- vim.cmd('let &titleold="'..TERMINAL..'"')
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.wo.wrap = O.wrap_lines -- Display long lines as just one line
vim.cmd('set whichwrap+=<,>,[,],h,l') -- move to next line with theses keys
vim.cmd('syntax on') -- syntax highlighting
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 2 -- More space for displaying messages
vim.cmd('set colorcolumn=99999') -- fix indentline for now
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.cmd('set expandtab') -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart
vim.wo.number = O.number -- set numbered lines
vim.wo.relativenumber = O.relative_number -- set relative number
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = O.timeoutlen -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.cmd('set foldmethod=indent')
-- vim wiki
vim.cmd("let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]")
vim.g.vimwiki_markdown_link_ext = 1
-- vim.g.vimwiki_list = {
--     ['path'] = '~/vimwiki/',
--     ['syntax']= 'markdown',
--     ['ext'] = '.md'
-- }
-- Vim commands
-- Note taker
vim.cmd 'autocmd BufWritePost *note-*.md silent !pwsh.exe -nol -nop -noni -File C:/Users/cells/Documents/Github/notetaker/buildNote.ps1 %:p'

-- line numbers
-- vim.cmd 'set relativenumber'

-- Markdown Preview in Browser
vim.cmd "autocmd BufEnter *.md noremap <F5> :!start msedge \"%:p\"<CR>"

-- Default shell
vim.cmd 'set hidden'
-- vim.cmd "set shell=C:\\Progra~1\\WindowsApps\\Microsoft.PowerShell_7.1.3.0_x64__8wekyb3d8bbwe\\pwsh.exe"
-- vim.cmd 'set shellcmdflag=-command'

-- Neoformatter
-- vim.g.neoformat_python_yapf={
--   exe = 'yapf'     
-- }
vim.g.neoformat_enabled_python = {'black'}
vim.g.neoformat_basic_format_align = 1
vim.g.neoformat_basic_format_retab = 1
vim.g.neoformat_basic_format_trim = 1
vim.cmd 'autocmd BufWritePre * undojoin | Neoformat'
