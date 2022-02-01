if &term =~ '^xterm'
    " Cursor in terminal:
        " Link: https://vim.fandom.com/wiki/Configuring_the_cursor
        " 0 -> blinking block not working in wsl
        " 1 -> blinking block
        " 2 -> solid block
        " 3 -> blinking underscore
        " 4 -> solid underscore
        " Recent versions of xterm (282 or above) also support
        " 5 -> blinking vertical bar
        " 6 -> solid vertical bar

    " normal mode
    let &t_EI .= "\e[2 q"

   " insert mode
    let &t_SI .= "\e[5 q"

    augroup windows_term
        autocmd!
        autocmd VimEnter * silent !echo -ne "\e[1 q"
        autocmd VimLeave * silent !echo -ne "\e[5 q"
    augroup END
endif

" Set's
    set nocompatible
    set termguicolors
    set wildmenu
    set ignorecase
    set smartcase
    set noeb vb t_vb=
    set shellslash
    set encoding=utf-8
    set backspace=indent,eol,start
    set rnu
    set ts=4
    set sw=4
    set expandtab
    set hidden
    set hlsearch
    set nu
    " Enable folding
    set foldmethod=indent
    set foldlevel=2
    "set clipboard=unnamedplus
    set iskeyword+=-
    let mapleader = " "
    set spellsuggest=best,5
    "disable swap and backup
    set nobackup
    set nowritebackup
    set noswapfile
    "Make substitution work in realtime
    set inccommand=split
    "Set scrolloff
    set scrolloff=10
    " Keymaps
    " remap keys
    nnoremap E $
    nnoremap B ^
    inoremap jk <ESC>
    nnoremap S :%s//g<Left><Left>
    "map gj/gk to j/k
    nnoremap j gj
    nnoremap k gk
    nnoremap gj j
    nnoremap gk k

    " copy to the end
    nnoremap Y yg_

    " undo partially
    inoremap , ,<C-g>u
    inoremap . .<C-g>u
    inoremap ! !<C-g>u
    inoremap ? ?<C-g>u

    "Moving text
    vnoremap <silent> <A-k>  :m '<-2<CR>gv=gv
    vnoremap <silent> <A-j>  :m '>+1<cr>gv=gv
    inoremap <silent> <A-k>  <ESC>:m .-2<CR>==i
    inoremap <silent> <A-j>  <ESC>:m .+1<CR>==i
    nnoremap <silent> <A-k>  :m .-2<CR>==
    nnoremap <silent> <A-j>  :m .+1<CR>==

    nnoremap <silent> <C-K> <C-W><C-K>
    nnoremap <silent> <C-K> <C-W><C-K>
    nnoremap <silent> <C-J> <C-W><C-J>
    nnoremap <silent> <C-L> <C-W><C-L>
    nnoremap <silent> <C-H> <C-W><C-H>
    "better use clipboard
    nnoremap <C-p> "*p
    " Map alt-v in command-line mode to replace the commandline with the Ex
    " command-line beneath the cursor in the buffer
    cnoremap <A-v> <C-\>esubstitute(getline('.'), '^\s*\(' . escape(substitute(&commentstring, '%s.*$', '', ''), '*') . '\)*\s*:*' , '', '')<CR>
    "All leader key mappings
    "align by = sign
    nnoremap <silent> <leader>a :tabularize /=<cr>
    "buffers
    nnoremap <silent> <Leader>b :ls<CR>:b<Space>
    nnoremap <silent> <Leader>c :bd<CR>
    "Explorer
    nnoremap <silent> <leader>e :NERDTreeToggle<CR>
    "No highlight
    nnoremap <silent> <leader>h :noh<CR>
    "fix spell error: Pick the first suggestion
    nnoremap <silent> <leader>s 1z=<CR>
    "split windows
    nnoremap <silent> <leader>v :vsplit<CR>
    "F12 to open VIMRC
    nnoremap <silent> <F12> :e ~/_vimrc<CR>
    "F4 to past timestamp
    nnoremap <F4> "=strftime("%c")<CR>p
    inoremap <F4> <C-R>=strftime("%c")<CR>
    " autocmd
    autocmd FileType python nnoremap <buffer> <F5> :update<bar>!python %<CR>
    autocmd BufNewFile,BufRead *.vb set ft=vbnet
    "stop auto commenting
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Vundle - Package manager
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim

call vundle#begin('$HOME/.vim/bundle')
    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'
    Plugin 'endel/vim-github-colorscheme'
    "Plugin 'tmhedberg/SimpylFold'
    Plugin 'vim-scripts/indentpython.vim'
    Plugin 'preservim/nerdtree'
    Plugin 'joshdick/onedark.vim'
    Plugin 'justinmk/vim-sneak'
    Plugin 'tpope/vim-surround'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'kien/ctrlp.vim'
    Plugin 'vimwiki/vimwiki'
    Plugin 'godlygeek/tabular'
    Plugin 'neoclide/coc.nvim', {'branch': 'release'}
    Plugin 'preservim/nerdcommenter'
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'ayu-theme/ayu-vim'
    Plugin 'mhinz/vim-startify'
    Plugin 'mhinz/vim-janah'
    Plugin 'chrisbra/csv.vim'
    Plugin 'g2boojum/vim-pweave'
    Plugin 'dracula/vim', { 'name': 'dracula' }
call vundle#end()            " required
filetype plugin indent on    " required


" Plugin Config
    colorscheme onedark
    "colorscheme dracula
    " commenter
    let g:NERDCreateDefaultMappings = 0
    map <silent>  <plug>NERDCommenterToggle
    " Airline
    let g:airline#extensions#tabline#enabled      = 1
    let g:airline#extensions#tabline#left_sep     = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    " move among buffers with CTRL
    nnoremap <silent> <S-k> :bnext<CR>
    nnoremap <silent> <S-j> :bprev<CR>
    " nerdTree
    let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
    nnoremap <leader>tf :NERDTreeFind<CR>
    " ctrlP
    let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
    if executable('ag')
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    endif
    let g:ctrlp_map = '<A-f>'
    let g:ctrlp_cmd = 'CtrlP'
    "vimwiki
    filetype plugin on
    nnoremap <silent> <leader>t :VimwikiToggleListItem<CR>
    syntax on
    let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
    let g:vimwiki_markdown_link_ext=1
    autocmd BufNewFile,BufRead *.md setlocal spell spelllang=en
    autocmd bufenter *.md noremap <silent> <f5> :! start msedge "%:p"<cr>
    augroup clear_trailing
        autocmd BufWritePre * if &ft != "vimwiki" | %s/\s\+$//e
        autocmd BufWritePre * if &ft != "vimwiki" | %s/\n\+\%$//e
        autocmd BufwritePre * noh
    augroup END

    let g:vimwiki_folding='custom'

    function! VimwikiFoldLevelCustom(lnum)
        let pounds = strlen(matchstr(getline(a:lnum), '^#\+'))
        if (pounds)
            return '>' . pounds  " start a fold level
        endif
        if getline(a:lnum) =~? '\v^\s*$'
            if (strlen(matchstr(getline(a:lnum + 1), '^#\+')))
            return '-1' " don't fold last blank line before header
          endif
        endif
        return '=' " return previous fold level
    endfunction

    augroup VimrcAuGroup
      autocmd!
      autocmd FileType vimwiki setlocal foldmethod=expr |
        \ setlocal foldenable | set foldexpr=VimwikiFoldLevelCustom(v:lnum)
    augroup END

    let g:UltiSnipsJumpForwardTrigger="<c-n>"
    let g:UltiSnipsJumpBackwardTrigger="<c-p>"
    "color
    let ayucolor='mirage'
    "Startify
    let g:startify_session_dir = '~/AppData/Local/nvim/session'
    let g:startify_change_to_vcs_root = 1
    "Automatically Update Sessions
    let g:startify_session_persistence = 1
    "Get rid of empy buffer and quit
    let g:startify_enable_special = 0
    "Let Startify take care of buffers
    let g:startify_session_delete_buffers = 1
    "Menu
    let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
    " Bookmarks
    let g:startify_bookmarks = [
            \ { 'i': '~/AppData/Local/nvim/init.vim' },
            \ { 'r': '~/Documents/Github' },
            \ { 'w': '~/vimwiki' },
            \ { 'b': '~/vimwiki/Blog/vuepress-deploy/blog/views' },
            \ ]
    " --------------------- for programming ---------------------

    " Python specific settings
    au BufNewFile,BufRead *.py set tabstop=4
    au BufNewFile,BufRead *.py set softtabstop=4
    au BufNewFile,BufRead *.py set shiftwidth=4
    au BufNewFile,BufRead *.py set textwidth=120
    au BufNewFile,BufRead *.py set expandtab
    au BufNewFile,BufRead *.py set autoindent
    au BufNewFile,BufRead *.py set fileformat=unix
    let python_highlight_all=1
source ~/_vimrc
let &packpath = &runtimepath
source ~/.vim/plug-config/coc.vim
