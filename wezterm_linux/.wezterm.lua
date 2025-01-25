-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Set font to Agave Nerd font
config.font = wezterm.font 'Agave Nerd Font'
config.font_size = 12

-- Set default shell and directory
-- config.default_domain = 'WSL:Ubuntu'
-- config.default_cwd = '/home/monty'

-- and finally, return the configuration to wezterm
return config
