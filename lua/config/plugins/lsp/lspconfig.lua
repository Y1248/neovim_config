return {
  'neovim/nvim-lspconfig',
  keys = {
    { '<leader>lp', '<CMD>LspStart pyright<CR>', desc = 'Start pyright LSP' },
    { '<leader>lc', '<CMD>LspStart clangd<CR>', desc = 'Start clangd LSP' },
  },
  cmd = { 'LspStart' },
  -- event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    { 'saghen/blink.cmp' },
    { 'williamboman/mason.nvim', }
  },
  config = function()
    local lspconfig = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')

    local keymap = vim.keymap -- for conciseness
    local opts = { silent = true }

    -- set keybinds
    keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
    keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts) -- smart rename

    keymap.set('n', '<leader>dd', vim.diagnostic.open_float, opts) -- show diagnostics for line
    keymap.set('n', '[d', vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
    keymap.set('n', ']d', vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
    keymap.set('n', 'K', vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
    keymap.set('n', '<leader>rs', ':LspRestart<CR>', opts) -- mapping to restart lsp if necessary

    local lsp_capabilities = require('blink.cmp').get_lsp_capabilities()
    -- local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
    lspconfig.tinymist.setup({
      -- cmd = { 'tinymist.exe' },
      -- offset_encoding = 'utf-8',
      capabilities = lsp_capabilities,
      -- settings = { semanticTokens = "disable" },
    })
    lspconfig.clangd.setup({ capabilities = lsp_capabilities, })
    lspconfig.pyright.setup({ capabilities = lsp_capabilities, })
    -- lspconfig.matlab_ls.setup({
    --   capabilities = lsp_capabilities,
    --   settings = {
    --     MATLAB = {
    --       installPath = "C:\\Program Files\\MATLAB\\R2024b",
    --     }
    --   }
    -- })

    -- mason_lspconfig.setup_handlers({
    --   -- default handler for installed servers
    --   function(server_name)
    --     lspconfig[server_name].setup({
    --       capabilities = lsp_capabilities,
    --     })
    --   end,
    -- })
  end,
}
