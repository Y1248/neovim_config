return {
  --[[
  {
    'Mofiqul/vscode.nvim',
    config = function()
      local c = require('vscode.colors').get_colors()
      require('vscode').setup({
        style = 'light',
        -- group_overrides = {
        --   Cursor = { fg = c.vscDarkBlue, bg = c.vscLightBlue, bold = true },
        --   ["@function"] = { fg = c.vscYellow, bg = 'NONE', bold = true },
        --   ["@function.builtin"] = { fg = c.vscYellow, bg = 'NONE', bold = true },
        --   ["@function.macro"] = { fg = c.vscYellow, bg = 'NONE', bold = true },
        --   ["@function.method"] = { fg = c.vscYellow, bg = 'NONE', bold = true },
        --   ["@keyword"] = { fg = c.vscBlue, bg = 'NONE', bold = true },
        --   ["@keyword.conditional"] = { fg = c.vscPink, bg = 'NONE', bold = true },
        --   ["@keyword.repeat"] = { fg = c.vscPink, bg = 'NONE', bold = true },
        --   ["@keyword.return"] = { fg = c.vscPink, bg = 'NONE', bold = true },
        --   ["@keyword.exception"] = { fg = c.vscPink, bg = 'NONE', bold = true },
        --   ["@keyword.import"] = { fg = c.vscPink, bg = 'NONE', bold = true },
        --   ['@number'] =  { fg = c.vscLightGreen, bg = 'NONE', bold = true },
        --   ['@number.float'] = { fg = c.vscLightGreen, bg = 'NONE', bold = true },
        --   ['@boolean'] = { fg = c.vscBlue, bg = 'NONE', bold = true },
        -- }
      })
      vim.cmd('colorscheme vscode')
    end
  },
  --]]
  ---[[
  {
    'catppuccin/nvim',
    config = function()
      require('catppuccin').setup({
        flavour = 'latte',
        show_end_of_buffer = true,
        no_italic = true,
        styles = {
          keywords = { 'bold' },
          functions = { 'bold' },
          booleans = { 'bold' },
          numbers = { 'bold' },
        },
        integrations = {
          diffview = true,
          -- Bufferline: do the special support in bufferline.lua file
        },
      })
      -- vim.opt.background = 'light'
      vim.cmd('colorscheme catppuccin')
    end
  },
  --]]
}
