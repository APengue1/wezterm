local wezterm = require 'wezterm'
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

local modules = {
  'lua.settings',
  'lua.appearance.background',
  'lua.appearance.window_frame',
  'lua.appearance.font',
  'lua.keys',
}

for _, m in ipairs(modules) do
  require(m).apply_to_config(config)
end

-- Require local config for machine specific config
require('lua.local').apply_to_config(config)

return config

