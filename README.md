# Introduction

这是我的个人NeoVIM配置。

# 功能概述

这个配置中包括的功能有：
- 基础options和基础keymaps。
- 插件管理：Lazy插件管理器。
- 输入：自动括号补全、自动注释、自动输入补全。
- 外观：Bufferline、主题、状态栏插件、treesitter。
- LSP：自动下载Language Server、语言层面的补全、错误诊断。
- 版本控制：Gitsigns。
- 其他：文件树、自动补全、模糊搜索、终端管理。

# 依赖项

需要事先安装的依赖项有：
- [WezTerm](https://github.com/wez/wezterm)：好用的终端客户端、可以用它来作为NeoVIM的客户端。
- [Git](https://git-scm.com/downloads)：版本管理。
- [MinGW-w64](https://www.mingw-w64.org/downloads/)：为了treesitter的一些编译。
- [clangd](https://github.com/clangd/clangd)：clangd language server。
- [ripgrep](https://github.com/BurntSushi/ripgrep)：搜索工具。
- typst相关：[Tinymist](https://github.com/Myriad-Dreamin/tinymist)、[typst](https://github.com/typst/typst)、[websocat](https://github.com/vi/websocat)。
- [Node.js](https://nodejs.org/en)：为了用其中的npm下载一些language server。

# 配置指南

使用此配置的方式为：
- 安装NeoVIM并添加到环境变量。
- 安装上面的所有依赖项并配置相关的环境变量。
- 下载[我的配置](https://github.com/htun1248/neovim_config)，打开NeoVIM，等待插件自动下载好即可。
