local wezterm = require "wezterm"
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 40

config.font = wezterm.font "MesloLGS Nerd Font Mono"
config.font_size = 14
config.color_scheme = "Catppuccin Mocha"

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

return config
