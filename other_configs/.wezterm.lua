local wezterm = require('wezterm')

local config = wezterm.config_builder()

-- Appearance
config.color_scheme = 'Dark Pastel'
-- config.color_scheme = 'Catppuccin Latte'
config.hide_tab_bar_if_only_one_tab = false
config.show_new_tab_button_in_tab_bar = true
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.integrated_title_button_style = 'Windows'
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.initial_rows = 36
config.initial_cols = 110
config.enable_scroll_bar = false
config.window_frame = {
  font = wezterm.font{family = 'Fira Code', weight = 'Regular'},
}

-- Set default program
config.default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' }

-- Font
config.line_height = 0.9
config.font = wezterm.font('FiraCode Nerd Font', { weight = 'Regular' })
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0'} -- Disable font ligatures

-- Keys
config.keys = {
  {
    key = 'F11',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
}

return config
