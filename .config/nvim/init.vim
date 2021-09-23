" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'} 

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " https://vimawesome.com/plugin/fzf
Plug 'junegunn/fzf.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'tpope/vim-fugitive'

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()


" Map ; and Ctrl+s to save
map ; :update<CR>

" Map leader
let mapleader=" "

" Map <space> y to copy/paste to/from clipboard
nmap <leader>y "*y
nmap <leader>p "*p

" Use <CR> to validate completion (allows auto import on completion)
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" End of Telescope

"Change tab size
set tabstop=2
set shiftwidth=2
set expandtab

" fzf Settings
" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'
nnoremap <C-p> :FZF<Cr>
nnoremap <C-r> :Rg<Cr>

" Clear screen
map <leader><space> :let @/= ''<cr> " clear search

" Map NerdTree Plugin to Ctrl+n
map <C-n> :NERDTreeToggle<CR>

