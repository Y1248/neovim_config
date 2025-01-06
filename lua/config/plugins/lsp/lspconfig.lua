return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'ibhagwan/fzf-lua' },
    { 'williamboman/mason.nvim', }
  },
  config = function()
    local lspconfig = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')
    local cmp_nvim_lsp = require('cmp_nvim_lsp')

    local keymap = vim.keymap -- for conciseness
    local opts = { silent = true }

    -- set keybinds
    keymap.set('n', 'gR', '<CMD>FzfLua lsp_references<CR>', opts) -- show definition, references
    keymap.set('n', 'gD', '<CMD>FzfLua lsp_declarations<CR>', opts) -- go to declaration
    keymap.set('n', 'gd', '<CMD>FzfLua lsp_definitions<CR>', opts) -- show lsp definitions
    keymap.set('n', 'gi', '<CMD>FzfLua lsp_implementations<CR>', opts) -- show lsp implementations
    keymap.set('n', 'gt', '<CMD>FzfLua lsp_typedefs<CR>', opts) -- show lsp type definitions

    keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
    keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts) -- smart rename

    keymap.set('n', '<leader>D', '<CMD>FzfLua diagnostics_document<CR>', opts) -- show  diagnostics for file
    keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts) -- show diagnostics for line
    keymap.set('n', '[d', vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
    keymap.set('n', ']d', vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
    keymap.set('n', 'K', vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
    keymap.set('n', '<leader>rs', ':LspRestart<CR>', opts) -- mapping to restart lsp if necessary

    local lsp_capabilities = cmp_nvim_lsp.default_capabilities()

    lspconfig.clangd.setup({ capabilities = lsp_capabilities, })
    lspconfig.tinymist.setup({
      cmd = { 'tinymist.exe' },
      offset_encoding = 'utf-8',
      capabilities = lsp_capabilities,
    })
    -- lspconfig.pyright.setup({ capabilities = lsp_capabilities, })

    mason_lspconfig.setup_handlers({
      -- default handler for installed servers
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = lsp_capabilities,
        })
      end,
    })
  end,
}
