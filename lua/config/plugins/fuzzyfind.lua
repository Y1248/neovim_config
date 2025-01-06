return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { '<leader>ff', '<CMD>FzfLua files<CR>', { slient = true } },
    { '<leader>fb', '<CMD>FzfLua buffers<CR>', { slient = true } },
    { '<leader>fs', '<CMD>FzfLua grep<CR>', { silent = true } },
    { '<leader>fc', '<CMD>FzfLua grep_cword<CR>', { silent = true } },
    { '<leader>fr', '<CMD>FzfLua resume<CR>', { silent = true } },
  },
  opts = {},
}
