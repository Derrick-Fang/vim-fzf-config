syntax on
set number
set hidden
set ignorecase smartcase
set incsearch hlsearch
let mapleader = " "

" 文件名搜索
nnoremap <silent> <C-p> :Files<CR>

" 切换打开的文件
nnoremap <silent> <leader>b :Buffers<CR>

" 项目全文搜索
nnoremap <silent> <leader>g :RG<CR>

" 文件目录浏览器
nnoremap <silent> <leader>e :Explore<CR>
