local wezterm = require('wezterm')

local config = wezterm.config_builder()

-- Appearance
config.color_scheme = 'Catppuccin Latte' --'Vs Code Light+ (Gogh)', 'Dark Pastel'
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.show_new_tab_button_in_tab_bar = true
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.initial_rows = 28
config.initial_cols = 90
config.enable_scroll_bar = false
config.window_frame = {
  font = wezterm.font{family = 'FiraCode Nerd Font', weight = 'Regular'},
}
config.colors = {
  background = '#FFFFFF',
  cursor_bg = '#1E66F5',
}

-- Set default program
config.default_prog = { 'nu.exe' }
-- config.default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' }

-- Font
config.line_height = 0.85
config.font_size = 12
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
