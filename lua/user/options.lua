local opts = {
	backup = false,
	writebackup = false,
	swapfile = false,
	compatible = false,
	wildmenu = true,
	ignorecase = true,
	smartcase = true,
--	shellslash = true,
	encoding = "utf-8",
	relativenumber = true,
	ts = 4,
	sw = 4,
	expandtab = true,
	hidden = true,
	hlsearch = true,
	mouse = "a",
	nu = true,
	foldmethod = "indent",
	foldlevel = 4,
	inccommand = "split",
	scrolloff = 10,
    cursorline = true,
}

vim.opt.shortmess:append("c")

for k, v in pairs(opts) do
	vim.opt[k] = v
end

vim.cmd([[set iskeyword+=-]])
--set noeb vb t_vb=
--set backspace=indent,eol,start
--set spellsuggest=best,5
