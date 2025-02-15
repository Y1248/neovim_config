return {
  'saghen/blink.cmp',
  lazy = true,
  event = { 'InsertEnter' },
  -- use a release tag to download pre-built binaries
  version = '*',
  opts = {
    keymap = {
      preset = 'enter',
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
      ['<Tab>'] = { 'select_next', 'fallback' },
    },
    completion = {
      list = { selection = { preselect = function(ctx) return ctx.mode ~= 'cmdline' end } },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },
    sources = { default = { 'buffer', 'lsp', 'path' }, },
  },
  opts_extend = { "sources.default" }
}
