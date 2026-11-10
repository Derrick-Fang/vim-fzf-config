#!/usr/bin/env bash
# 最小 Vim 配置：fzf + fzf.vim + ripgrep
set -e

# 1. 安装 ripgrep 和 fzf（按系统选择包管理器）
if command -v brew >/dev/null 2>&1; then
    brew install ripgrep fzf
elif command -v apt-get >/dev/null 2>&1; then
    sudo apt-get update
    sudo apt-get install -y ripgrep fzf
else
    echo "请手动安装 ripgrep 和 fzf" >&2
    exit 1
fi

# 2. 安装 vim-plug（插件管理器）
if [ ! -f ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# 3. 写入 ~/.vimrc
cat > ~/.vimrc <<'EOF'
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

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
EOF

# 4. 安装插件
vim +PlugInstall +qall

echo "安装完成！快捷键：Ctrl-p 文件搜索 | <leader>b 切换buffer | <leader>g 全文搜索 | <leader>e 文件浏览器"
