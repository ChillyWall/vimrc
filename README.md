# vimrc

这是ChillyWall的配置文件。

配置涵盖了基础的主题和界面美化，基于coc的语言服务器，常用键位，C++和Markdown支持，以及git相关支持。以及nerdtree, which-key, easymotion等基础插件。

- `keymaps.vim` 中定义了不与特定插件绑定的通用键位，使用which-key组织。
- `options.vim` 中定义了不与特定插件绑定的通用选项。
- `bundles.vim` 中定义了使用的插件列表。
- `plugin` 文件夹下包含各个插件的单独配置。
  - `coc.vim` 中包含coc相关配置
  - `floaterm.vim` 中包含floaterm相关配置
  - `git.vim` 中包含fugitive的配置和基于floaterm的lazygit配置
  - `gutentags.vim` 中包含gutentags和gtags等配置
  - `LeaderF.vim` 中包含LeaderF相关配置，依赖gutentags
  - `colorscheme.vim` 中包含主题配色相关配置

## 使用

将本项目克隆下来，运行install.sh，将会在默认位置创建硬链接链接本配置，若你原本已有配置，将无法创建链接。

```sh
git clone https://github.com/ChillyWall/vimrc.git
cd vimrc
sh install.sh
```
