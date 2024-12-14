return {
  "nvim-telescope/telescope.nvim",
  -- dependencies = { 'nvim-lua/plenary.nvim', },
  keys = {
    { '<leader>ff', '<cmd>Telescope find_files<cr>',  desc = 'Fuzzy find files cwd' },
    { '<leader>fr', '<cmd>Telescope resume<cr>',  desc = 'Resume last search result' },
    { '<leader>fs', '<cmd>Telescope live_grep<cr>',  desc = 'Find string' },
    { '<leader>fc', '<cmd>Telescope grep_string<cr>',  desc = 'Find string under cursor' },
    { '<leader>ft', '<cmd>TodoTelescope<cr>',  desc = 'Find todos' },
  },
  branch = "0.1.x",
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })
  end,
}
