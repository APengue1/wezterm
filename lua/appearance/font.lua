local wezterm = require('wezterm')
local M = {}

function M.apply_to_config(config)
  config.font = wezterm.font_with_fallback {
    'MesloLGS NF'
  }
  config.font_size = 18.0
end

return M
