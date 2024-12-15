# Introduction

> You can find different versions in EN(here) / [ZH](./README-ZH.md).

This is my personal configuration of NeoVIM, mainly using in Windows operating system.

# Outline of Configuration

Functions in this configurations includs:
- Basic options and keymaps.
- Plugin management: Lazy.
- Input enhancing: auto bracket pair, auto comment, auto completion.
- Appearance: bufferline, colortheme, statusline enhancing, treesitter.
- LSP: language server auto downloading, auto completion of languages, error diagnosis.
- Version controling: gitsigns.
- Other: file tree, fuzzy finding, terminal management.

# Dependencies

There are several dependencies you need to installed before setup NeoVIM:
- [WezTerm](https://github.com/wez/wezterm): a powerful terminal client. I use it for the client of NeoVIM. My personal configuration is [here](.wezterm.lua).
- [Git](https://git-scm.com/downloads): for version control and auto downloading of plugins.
- [MinGW-w64](https://www.mingw-w64.org/downloads/): for some compiling work of treesitter.
- [clangd](https://github.com/clangd/clangd): clangd language server.
- [ripgrep](https://github.com/BurntSushi/ripgrep): a powerful for fuzzy search.
- typst: [Tinymist](https://github.com/Myriad-Dreamin/tinymist), [typst](https://github.com/typst/typst), [websocat](https://github.com/vi/websocat).
- [Node.js](https://nodejs.org/en): mainly for the `npm` tool inside for downloading some language servers.

# Setup This Config

The method for using this configuration is:
- Install NeoVIM and configure its path to environmental variables.
- Install the former presented denpendencies and configure their path to environmental variables.
- Download this repository to `~\AppData\Local\nvim` and open NeoVIM. Then waitting for the completion of plugins' auto downloading.
