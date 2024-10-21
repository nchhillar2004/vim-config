set number
set relativenumber
set autoindent
set mouse=a
set completeopt=noinsert,menuone,noselect
set cursorline
set title
set expandtab
set shiftwidth=4
set guicursor=i:block
set wildmenu

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rose-pine/neovim'
Plug 'briancollins/vim-jst'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

colorscheme rose-pine
highlight Normal guibg=#000000
highlight NonText guibg=#000000
highlight EndOfBuffer guibg=#000000

let NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen = 1

tnoremap <Esc> <C-\><C-n>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nnoremap <C-s> :w<CR>

let mapleader = " "
nnoremap <leader>t :terminal<CR>
nnoremap <leader>n :NERDTreeToggle<CR>:wincmd o<CR>
nnoremap <leader>h :nohlsearch<CR>
nnoremap <leader>r :NERDTreeRefreshRoot<CR>

nnoremap <leader>f :normal! gg=G<CR>

nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>

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

autocmd BufRead,BufNewFile *.ejs set filetype=html
autocmd BufRead,BufNewFile *.jsp set filetype=html
