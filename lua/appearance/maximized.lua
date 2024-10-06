local wezterm = require 'wezterm'
local mux = wezterm.mux

local M = {}

function M.apply_to_config(config)
  wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
  end)
end

return M
