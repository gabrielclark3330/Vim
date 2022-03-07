" A neovim config file by Gabriel Clark

" --------------------------
" ------ SET SETTINGS ------
" --------------------------
set showmatch               " show matching
set ignorecase              " case insensitive
set hlsearch                " highlight search
set incsearch               " incremental search
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
" set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
" set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set spell                   " enable spell check (may need to download language package)
set splitright
" set noswapfile            " disable creating swap file


" --------------------------
" ----- REMAP COMMANDS -----
" --------------------------
" change the leader key from "\" to ";" ("," is also popular)
let mapleader=";"

" Shortcut to edit THIS configuration file: (e)dit (c)onfiguration
nnoremap <silent><leader>ec :e $MYVIMRC<cr>

" Shortcut to source (reload) THIS configuration file after editing it: (s)ource (c)onfiguraiton
nnoremap <silent><leader>sc :source $MYVIMRC<cr>

" Find files using Telescope command-line sugar.
nnoremap <silent><leader>ff <cmd>Telescope find_files<cr>
nnoremap <silent><leader>fg <cmd>Telescope live_grep<cr>
nnoremap <silent><leader>fb <cmd>Telescope buffers<cr>

" Toggle NERDTree
nnoremap <silent><Space> :NERDTreeToggle<cr>

" remap escape to <c-\><c-n> for easy terminal escape
tnoremap <Esc> <C-\><C-n>
tnoremap <C-]> <Esc>

" Open terminal in desired split
nnoremap <silent><c-l> <Cmd>vsplit <bar> term <cr>

" toggleterm floating mappings
let g:toggleterm_terminal_mapping = '<C-o>'
autocmd TermEnter term://*toggleterm#*
	\ tnoremap <silent><c-o> <Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>
" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-o> will open terminal 2
nnoremap <silent><c-o> <Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>
inoremap <silent><c-o> <Esc><Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>


" --------------------------
" ---- VIM PLUG PLUGINS ----
" --------------------------
call plug#begin('~/.vim/plugged') "'~/.vim/plugged'
 Plug 'akinsho/toggleterm.nvim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'EdenEast/nightfox.nvim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
call plug#end()

if (has('termguicolors'))
	set termguicolors
	endif
	syntax enable

colorscheme nightfox
