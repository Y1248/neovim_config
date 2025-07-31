return {
  "folke/snacks.nvim",
  keys = {
    -- Snacks.picker
    { '<C-p>', '<CMD>lua Snacks.picker.files()<CR>' },
    { '<leader>ff', '<CMD>lua Snacks.picker.files()<CR>' },
    { '<leader>fs', '<CMD>lua Snacks.picker.grep()<CR>' },
    { '<leader>fb', '<CMD>lua Snacks.picker.buffers()<CR>' },
    { '<leader>fr', '<CMD>lua Snacks.picker.resume()<CR>' },
    { '<leader>fl', '<CMD>lua Snacks.picker.lines()<CR>' },

    -- Snacks.terminal
    { '<leader>tt', '<CMD>lua Snacks.terminal.toggle()<CR>' },
    { '<leader>to', '<CMD>lua Snacks.terminal.open()<CR>' },

    -- Snacks.explorer
    { '<leader>se', '<CMD>lua Snacks.explorer()<CR>' },
  },
  opts = {
    explorer = { enabled = true },
    terminal = { enabled = true },
    picker = {
      layout = {
        preset = "ivy",
        position = "bottom",
        preview = false,
        -- layout = {
        --   box = "vertical",
        --   backdrop = false,
        --   row = -1,
        --   width = 0,
        --   height = 0.35,
        --   border = "none",
        --   title = " {title} {live} {flags}",
        --   title_pos = "left",
        --   { win = "input", height = 1, border = "none" },
        --   {
        --     box = "horizontal",
        --     { win = "list", border = "none" },
        --     { win = "preview", title = "{preview}", width = 0.6, border = "none" },
        --   },
        -- },
      }
    }
  },
}
