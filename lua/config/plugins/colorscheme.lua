return {
  'Mofiqul/vscode.nvim',
  config = function()
    local c = require('vscode.colors').get_colors()
    require('vscode').setup({
      style = 'dark',
      group_overrides = {
        Cursor = { fg = c.vscDarkBlue, bg = c.vscLightBlue, bold = true },

        ["@function"] = { fg = c.vscYellow, bg = 'NONE', bold = true },
        ["@function.builtin"] = { fg = c.vscYellow, bg = 'NONE', bold = true },
        ["@function.macro"] = { fg = c.vscYellow, bg = 'NONE', bold = true },
        ["@function.method"] = { fg = c.vscYellow, bg = 'NONE', bold = true },

        ["@keyword"] = { fg = c.vscBlue, bg = 'NONE', bold = true },
        ["@keyword.conditional"] = { fg = c.vscPink, bg = 'NONE', bold = true },
        ["@keyword.repeat"] = { fg = c.vscPink, bg = 'NONE', bold = true },
        ["@keyword.return"] = { fg = c.vscPink, bg = 'NONE', bold = true },
        ["@keyword.exception"] = { fg = c.vscPink, bg = 'NONE', bold = true },
        ["@keyword.import"] = { fg = c.vscPink, bg = 'NONE', bold = true },
      }
    })
    vim.cmd('colorscheme vscode')
  end
}
