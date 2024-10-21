" Nishant Chhillar nchhillar2004/nvim-config
" Some of the configs are optional feel free to remove or modify
set number
set relativenumber
set autoindent
set mouse=a
set completeopt=noinsert,menuone,noselect
set cursorline " highlight current line
set title
set expandtab
set shiftwidth=4
set guicursor=i:block " set cursor to block
set wildmenu

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

" colorschemes
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'rose-pine/neovim'

Plug 'neoclide/coc.nvim', {'branch': 'release'} " code recommendations
Plug 'briancollins/vim-jst'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim' " required by telescope.nvim
Plug 'nvim-telescope/telescope.nvim' " find_files

call plug#end()

" default colorscheme
colorscheme rose-pine

" gui bg color to black
highlight Normal guibg=#000000
highlight NonText guibg=#000000
highlight EndOfBuffer guibg=#000000

" show hidden files in NERDTree
let NERDTreeShowHidden=1
" quit NERDTree when file opened
let g:NERDTreeQuitOnOpen = 1

" press 'Esc' to quit terminal mode
tnoremap <Esc> <C-\><C-n>

" press 'enter' to input a recommendation
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Ctrl + s to run :w (save file)
nnoremap <C-s> :w<CR>

let mapleader = " "
nnoremap <leader>t :terminal<CR>
nnoremap <leader>n :NERDTreeToggle<CR>:wincmd o<CR>
nnoremap <leader>h :nohlsearch<CR>
nnoremap <leader>r :NERDTreeRefreshRoot<CR>
nnoremap <leader>f :normal! gg=G<CR>
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>

" colorscheme/ themes
nnoremap <leader>1 :highlight Normal guibg=#000000<CR>
nnoremap <leader>2 :colorscheme rose-pine-main<CR>
nnoremap <leader>3 :colorscheme kanagawa-wave<CR>
nnoremap <leader>4 :colorscheme gruvbox-material<CR>
nnoremap <leader>5 :colorscheme default<CR>
nnoremap <leader>s :vsplit<CR>
nnoremap <leader>b :b#<CR>
tnoremap <leader>b <C-\><C-n>:b#<CR>

" Alt + J/ K move line up or down
nnoremap <A-j> :m+1<CR>==
nnoremap <A-k> :m-2<CR>==

" open .ejs & .jsp files as html (for syntax highlighting and recommendations)
autocmd BufRead,BufNewFile *.ejs set filetype=html
autocmd BufRead,BufNewFile *.jsp set filetype=html
