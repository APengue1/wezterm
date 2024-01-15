local wezterm = require('wezterm')
local M = {}

function M.apply_to_config(config)
  config.background = {
    {
      source = {
        File = wezterm.config_dir .. '/wallpaper.jpg',
      },
      hsb = {
        brightness = 0.8
      },
    }
  }
end

return M
