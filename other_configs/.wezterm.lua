local wezterm = require('wezterm')

local config = wezterm.config_builder()

-- Appearance
config.color_scheme = 'Thayer Bright'
config.hide_tab_bar_if_only_one_tab = false
config.show_new_tab_button_in_tab_bar = true
config.window_decorations = 'RESIZE'
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.initial_rows = 28
config.initial_cols = 85
config.enable_scroll_bar = false
config.window_frame = {
  font = wezterm.font{family = 'Lucida Console', weight = 'Regular'},
}

-- Set default program
config.default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' }

-- Font
config.line_height = 0.8
config.font = wezterm.font('SauceCodePro Nerd Font', { weight = 'Regular' })

-- Keys
config.keys = {
  {
    key = 'F11',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
}

return config
