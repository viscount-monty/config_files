-- The following line must be added to .bashrc
-- # Source wezterm script for better wezterm integration
-- source ~/wezterm.sh

-- Location of wezterm.sh 
-- https://github.com/wezterm/wezterm/blob/main/assets/shell-integration/wezterm.sh

-- Download wezterm.sh command
-- curl -o wezterm.sh https://raw.githubusercontent.com/wezterm/wezterm/refs/heads/main/assets/shell-integration/wezterm.sh

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Set font to Agave Nerd font
config.font = wezterm.font 'Agave Nerd Font'
config.font_size = 10

-- Set default shell and directory
config.default_domain = 'WSL:Ubuntu'
config.wsl_domains = {
  {
    -- The name of this specific domain.  Must be unique amonst all types
    -- of domain in the configuration file.
    name = 'WSL:Ubuntu',

    -- The name of the distribution.  This identifies the WSL distribution.
    -- It must match a valid distribution from your `wsl -l -v` output in
    -- order for the domain to be useful.
    distribution = 'Ubuntu',

    -- The username to use when spawning commands in the distribution.
    -- If omitted, the default user for that distribution will be used.

    -- username = "hunter",

    -- The current working directory to use when spawning commands, if
    -- the SpawnCommand doesn't otherwise specify the directory.

    default_cwd = '~'

    -- The default command to run, if the SpawnCommand doesn't otherwise
    -- override it.  Note that you may prefer to use `chsh` to set the
    -- default shell for your user inside WSL to avoid needing to
    -- specify it here

    -- default_prog = {"fish"}
  },
}

-- and finally, return the configuration to wezterm
return config
