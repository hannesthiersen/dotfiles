" author: Hannes Thiersen
" email: <hannesthiersen@gmail.com>

" Neovim Defaults:
" ----------------------------------------------------------------------------
"  Check here before implementing new things
" ----------------------------------------------------------------------------
" Syntax highlighting is enabled by default
" ":filetype plugin indent on" is enabled by default
"
" 'autoindent' is set by default
" 'autoread' is set by default
" 'background' always defaults to "dark"
" 'backspace' defaults to "indent,eol,start"
" 'backupdir' defaults to .,~/.local/share/nvim/backup (|xdg|)
" 'belloff' defaults to "all"
" 'complete' doesn't include "i"
" 'cscopeverbose' is enabled
" 'directory' defaults to ~/.local/share/nvim/swap// (|xdg|), auto-created
" 'display' defaults to "lastline,msgsep"
" 'encoding' is UTF-8 (cf. 'fileencoding' for file-content encoding)
" 'fillchars' defaults (in effect) to "vert:│,fold:·"
" 'fsync' is disabled
" 'formatoptions' defaults to "tcqj"
" 'history' defaults to 10000 (the maximum)
" 'hlsearch' is set by default
" 'incsearch' is set by default
" 'langnoremap' is enabled by default
" 'langremap' is disabled by default
" 'laststatus' defaults to 2 (statusline is always shown)
" 'listchars' defaults to "tab:> ,trail:-,nbsp:+"
" 'nocompatible' is always set
" 'nrformats' defaults to "bin,hex"
" 'ruler' is set by default
" 'sessionoptions' doesn't include "options"
" 'shortmess' sets "F" flag
" 'showcmd' is set by default
" 'sidescroll' defaults to 1
" 'smarttab' is set by default
" 'tabpagemax' defaults to 50
" 'tags' defaults to "./tags;,tags"
" 'ttimeoutlen' defaults to 50
" 'ttyfast' is always set
" 'undodir' defaults to ~/.local/share/nvim/undo (|xdg|), auto-created
" 'viminfo' includes "!"
" 'wildmenu' is set by default
" ----------------------------------------------------------------------------


" Vim-Plug: load plugins
" ----------------------------------------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()

" set colorscheme
colorscheme zellner

" split panel navigation mapping shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Line number setup
set number relativenumber

" Window split preferences
set splitright splitbelow

" Tabspacing configuration (Python rules)
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


" Python file specifics
au BufNewFile, BufRead *.py set textwidth=79 autoindent


" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e
" --------------------------------------------
" Syntax:
"   %s/{find}/{replace}/{option}
"   find:
"	\s  > space
"	\+  > any amount of previous character
"	$   > EOL (end of line)
"   replace:
"	EMPTY
"   optioin:
"	e   > ignore error when not found
" --------------------------------------------


" Spell-check set to F6:
map <F6> :setlocal spell! spelllang-en_gb<CR>
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ EXPERIMENT <
" configure for specific filetypes


" Ignore case when searching
set ignorecase
" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ EXPERIMENT <
" including incsearch and hlsearch
" consider special cases

