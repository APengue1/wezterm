local wezterm = require('wezterm')
local act = wezterm.action
local M = {}

function M.apply_to_config(config)
  config.keys = {
    -- Disable the debug keybinding
    { key = 'l', mods = 'CTRL|SHIFT', action = wezterm.action.DisableDefaultAssignment },
  }
end

return M

