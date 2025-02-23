local wezterm = require('wezterm')
local config = wezterm.config_builder()

-- Appearance
config.color_scheme = 'Catppuccin Latte' -- 'Vs Code Light+ (Gogh)', 'Dark Pastel'
config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.show_tab_index_in_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.show_new_tab_button_in_tab_bar = true

config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.initial_rows = 30
config.initial_cols = 95
config.enable_scroll_bar = false
config.window_frame = {
  font = wezterm.font{family = 'FiraCode Nerd Font', weight = 'Regular'},
}
config.colors = {
  background = '#FFFFFF',
  cursor_bg = '#1E66F5',
}

-- Set default program
config.default_prog = { 'nu.exe' } -- pwsh.exe

-- Font
config.line_height = 0.85
-- config.font_size = 12
config.font = wezterm.font('FiraCode Nerd Font', { weight = 'Regular' })
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0'} -- Disable font ligatures

-- Keys
config.keys = {
  { -- Full screen
    key = 'F11',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
  { -- Split
    key = '_',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical{ domain = 'CurrentPaneDomain' },
  },
  { -- Split
    key = '|',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal{ domain = 'CurrentPaneDomain' },
  },
  { -- Move between panes
    key = 'h',
    mods = 'CTRL|SHIFT',
    action = wezterm.action{ActivatePaneDirection='Left'},
  },
  { -- Move between panes
    key = 'l',
    mods = 'CTRL|SHIFT',
    action = wezterm.action{ActivatePaneDirection='Right'},
  },
  { -- Move between panes
    key = 'j',
    mods = 'CTRL|SHIFT',
    action = wezterm.action{ActivatePaneDirection='Down'},
  },
  { -- Move between panes
    key = 'k',
    mods = 'CTRL|SHIFT',
    action = wezterm.action{ActivatePaneDirection='Up'},
  }
}

return config

