local M = {}

function M.apply_to_config(config)
  -- had weird issue where I couldn't get the mouse to show again.
  config.hide_mouse_cursor_when_typing = false
end

return M
