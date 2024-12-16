# Introduction

> You can find different versions in [EN](./README.md) / ZH(here).

这是我个人的NeoVIM配置，主要是为了在Windows操作系统中使用。

# 功能概述

这个配置中包括的功能有：
- 基础options和基础keymaps。
- 插件管理：Lazy插件管理器。
- 输入：自动括号匹配、自动注释、自动输入补全。
- 外观：Bufferline、主题、状态栏插件、treesitter。
- LSP：自动下载Language Server、语言层面的补全、错误诊断。
- 版本控制：Gitsigns。
- 其他：文件树、模糊搜索、终端管理。

# 依赖项

需要事先安装的依赖项有：
- [WezTerm](https://github.com/wez/wezterm)：好用的终端客户端、我主要用它来作为NeoVIM的客户端。我的WezTerm的个人配置为[here](./other_configs/.wezterm.lua)。
- [Git](https://git-scm.com/downloads)：版本管理和自动下载插件。
- [MinGW-w64](https://www.mingw-w64.org/downloads/)：为了treesitter的一些编译工作。
- [clangd](https://github.com/clangd/clangd)：clangd language server。
- [ripgrep](https://github.com/BurntSushi/ripgrep)：搜索工具。
- typst相关：[Tinymist](https://github.com/Myriad-Dreamin/tinymist)、[typst](https://github.com/typst/typst)、[websocat](https://github.com/vi/websocat)。
- [Node.js](https://nodejs.org/en)：为了用其中的npm下载一些language server。

# 配置指南

使用此配置的方式为：
- 安装NeoVIM并添加到环境变量。
- 安装上面的所有依赖项并配置相关的环境变量。
- 下载这个仓库到`~\AppData\Local\nvim`，打开NeoVIM，等待插件自动下载好即可。
