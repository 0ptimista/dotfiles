call plug#begin()
" 文件导航/搜索/查找
Plug 'nvim-lua/plenary.nvim' "required for telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" 内容分析，可根据分析进行语法高亮，自动缩进，代码折叠等。
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

" 状态栏
Plug 'nvim-lualine/lualine.nvim' " 状态栏
Plug 'kyazdani42/nvim-web-devicons' "状态栏图标

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" 自动补全，cmp-buffer表示在buffer中自动补全。以此类推。
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" macOS Only
Plug 'mrjones2014/dash.nvim', { 'do': 'make install' } " Dash API 查询

" neovim主题
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } "iTerm2 theme is in exra folder
Plug 'gruvbox-community/gruvbox'
call plug#end()


colorscheme gruvbox
" colorscheme tokyonight-moon


" 全局设置
set relativenumber
set nohlsearch
set number
set noswapfile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set formatoptions=  "防止自动添加注释
set foldmethod=expr " 使用tree-sitter解析对代码进行折叠
set foldexpr=nvim_treesitter#foldexpr()
set completeopt=menu,menuone,noselect

" 快捷键
let mapleader="\\"  "设置leader key 为反斜杠'\'

nnoremap <leader>q :q<cr>
" hidden=true, 允许Telescope查找隐藏文件(dotfiles)
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"yank to clipboard
noremap <Leader>y "*y
"split window
nnoremap <leader>vs :vs<cr>
nnoremap <leader>hs :split<cr>
"window navgation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 插件设置
:lua require('config')
