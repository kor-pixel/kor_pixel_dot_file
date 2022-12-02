local wezterm = require 'wezterm'

local new_espresso = wezterm.color.get_builtin_schemes()['Espresso']
new_espresso.cursor_fg = 'black'

return {
  font = wezterm.font 'D2Coding ligature',
  font_size = 14,

  hide_tab_bar_if_only_one_tab = true,

  color_schemes = {
    ['My Espresso'] = new_espresso,
  },
  color_scheme = 'My Espresso',

  window_frame = {
    inactive_titlebar_bg = '#323232',
    active_titlebar_bg = '#323232',
    -- These are fixes for wayland window decoration issue
    inactive_titlebar_border_bottom = "#323232",
    active_titlebar_border_bottom = "#323232",
  },

  window_padding = {
    top = 0,
  },

  keys = {
    {
      key = 'q',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.CloseCurrentTab { confirm = true },
    },
  },

}
