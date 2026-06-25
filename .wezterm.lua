local wezterm = require 'wezterm'
local act = wezterm.action


return {
  default_prog = { 'wsl.exe', '-d', 'archlinux', '--', '/usr/bin/tmux' },
  font = wezterm.font("JetBrains Mono"),
  font_size = 12.0,
  window_decorations = "RESIZE",
  keys = {
    { key = 'C', mods = 'CTRL|SHIFT', action = act.CopyTo 'Clipboard' },
    { key = 'V', mods = 'CTRL|SHIFT', action = act.PasteFrom 'Clipboard' },
  },
}
