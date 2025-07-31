-- Netrw about
-- vim.cmd('let g:netrw_liststyle = 3')
-- vim.cmd('let g:netrw_banner = 0')
-- vim.cmd('let g:netrw_winsize = 20')
vim.g.loaded_netrw = 1       -- Disable netrw
vim.g.loaded_netrwPlugin = 1 -- Same as the previous line
vim.g.python_recommended_style = 0 -- Setting indent size to 2 for python files

vim.opt.clipboard:append('unnamedplus') -- use system clipboard as default register

-- vim.cmd("cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'")
vim.diagnostic.config({ virtual_text = true, })

local sysname = vim.uv.os_uname().sysname
if sysname == "Windows_NT" then
  vim.opt.shell = "nu.exe"
end

local options = {
  -- APPEARENCE about
  fileencoding = 'utf-8',
  encoding = 'utf-8',
  termguicolors = true,
  conceallevel = 0,
  number = true,
  relativenumber = false,
  numberwidth = 2, -- default is 4
  signcolumn = 'no',
  cursorline = false,
  wrap = true,
  cmdheight = 1,
  pumheight = 12,
  wildmenu = false,
  lazyredraw = true,
  showmode = false,
  splitbelow = true,
  splitright = true,
  -- colorcolumn = '80',
  -- guicursor = 'n-v-i-c:block-Cursor',

  -- INDENT about
  tabstop = 2, -- spaces for tabs
  shiftwidth = 2, -- 2 spaces for indent width
  softtabstop = 2,
  expandtab = true, -- expand tab to spaces
  breakindent = true,
  linebreak = false,
  smarttab = true,
  shiftround = true,
  cindent = true,
  autoindent = true, -- copy indent from current line when starting new line
  smartindent = true,

  -- EDIT about
  mouse = 'a',
  mousemodel = 'extend',
  ignorecase = true, -- ignore case in searching
  smartcase = true, -- if you include mixed case in your search, assumes you want case-sensitive
  hlsearch = true,
  incsearch = true,
  showmatch = true,

  -- OTHER
  backup = false,
  swapfile = false,
  list = false,
  backspace = 'indent,eol,start',
  jumpoptions = 'stack',
  -- scrolloff = 8,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
