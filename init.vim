"set runtimepath^=~/.vim runtimepath+=~/.vim/after
source ~/_vimrc
"let &packpath = &runtimepath
"source ~/.vim/plug-config/coc.vim

lua require('lsp')
lua require('nvim-cmp')
