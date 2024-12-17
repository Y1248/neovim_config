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
- Basic version controling: gitsigns, neogit, GV.
- Other: file tree, fuzzy finding, terminal management.

# Dependencies

There are several dependencies you need to installed before setup NeoVIM:
- [WezTerm](https://github.com/wez/wezterm): a powerful terminal client. I use it for the client of NeoVIM. My personal configuration is [here](./other_configs/.wezterm.lua).
- [Git](https://git-scm.com/downloads): for version control and auto downloading of plugins.
- [MinGW-w64](https://winlibs.com/): free C and C++ compiler for Microsoft Windows. In this configuration, it maily for the compiling tasks tree-sitter and clangd language server.
- [ripgrep](https://github.com/BurntSushi/ripgrep): a powerful tool for fuzzy search.
- typst: [Tinymist](https://github.com/Myriad-Dreamin/tinymist), [typst](https://github.com/typst/typst), [websocat](https://github.com/vi/websocat).
- [Node.js](https://nodejs.org/en): mainly for the `npm` tool inside for downloading some language servers.

# Setup This Config

The method for using this configuration is:
- Install NeoVIM and configure its path to environmental variables.
- Install the former presented denpendencies and configure their path to environmental variables.
- Download this repository to `~\AppData\Local\nvim` and open NeoVIM. Then waitting for the completion of plugins' auto downloading.
- (Optional)Create file link for `other_configs\.wezterm.lua` and `other_configs\Microsoft.PowerShell_profile.ps1` using commands `mklink /h source_location dest_location`. (Mainly for the synchronization of corresponding configuration)
- (Optional)Exchange caps lock and right ctrl key using the following commands(save it in a `.reg` file and double-clike it):
    ~~~reg
    Windows Registry Editor Version 5.00

    [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
    "Scancode Map"=hex:00,00,00,00,00,00,00,00,03,00,00,00,3A,00,1D,E0,1D,E0,3A,00,00,00,00,00
    ~~~
