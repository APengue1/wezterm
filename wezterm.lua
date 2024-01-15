local wezterm = require 'wezterm'
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

local modules = {
  [1] = require('lua.appearance.background'),
  [2] = require('lua.appearance.window_frame'),
  [3] = require('lua.appearance.font'),
}

for _, m in ipairs(modules) do
  m.apply_to_config(config)
end

return config

