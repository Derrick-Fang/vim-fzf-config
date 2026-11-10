# vim-fzf-config

最小 Vim 配置，只包含三个核心能力：**fzf**（模糊查找）、**fzf.vim**（Vim 集成）、**ripgrep**（全文搜索）。

## 一键安装

```bash
git clone https://github.com/Derrick-Fang/vim-fzf-config.git
cd vim-fzf-config
./install.sh
```

脚本会自动完成：

1. 安装 `ripgrep` 和 `fzf`（支持 macOS Homebrew / Ubuntu apt）
2. 安装 [vim-plug](https://github.com/junegunn/vim-plug) 插件管理器
3. 写入 `~/.vimrc`（包含 fzf / fzf.vim 插件声明）
4. 运行 `PlugInstall` 安装插件

## 快捷键

| 快捷键 | 功能 |
|--------|------|
| `Ctrl-p` | 文件名模糊搜索 (`:Files`) |
| `空格 b` | 切换已打开的 buffer (`:Buffers`) |
| `空格 g` | 项目全文搜索 (`:RG`，基于 ripgrep) |
| `空格 e` | 文件目录浏览器 (`:Explore`，内置 netrw) |

## 文件说明

- `install.sh` — 一键安装脚本
- `vimrc` — 配置内容参考（install.sh 会自动写入 `~/.vimrc`）

## 依赖

- Vim 8+
- [fzf](https://github.com/junegunn/fzf)
- [fzf.vim](https://github.com/junegunn/fzf.vim)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
