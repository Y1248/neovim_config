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
  pumheight = 8,
  wildmenu = false,
  lazyredraw = true,
  showmode = false,
  splitbelow = true,
  splitright = true,
  guicursor = 'n-v-i-c:block-Cursor',

  -- INDENT about
  tabstop = 2,
  shiftwidth = 2,
  softtabstop = 2,
  expandtab = true,
  breakindent = true,
  linebreak = false,
  smarttab = true,
  shiftround = true,
  cindent = true,
  autoindent = true,
  smartindent = true,

  -- EDIT about
  mouse = 'a',
  ignorecase = true,
  smartcase = true,
  hlsearch = true,
  incsearch = true,
  showmatch = true,

  -- OTHER
  backup = false,
  swapfile = false,
  list = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
