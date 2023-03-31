
local wezterm = require "wezterm"
local config = {

    color_scheme = "seoulbones_dark",
    font = wezterm.font "D2Coding ligature",
    font_size = 15,
    hide_tab_bar_if_only_one_tab = true,

    colors = {
        cursor_fg = "black",
        tab_bar = {
            inactive_tab_edge = "#4b4b4b"
        }
    },

    window_frame = {
        inactive_titlebar_bg = "#4b4b4b",
        active_titlebar_bg = "#4b4b4b",
        -- These are fixes for wayland window decoration issue
        inactive_titlebar_border_bottom = "#4b4b4b",
        active_titlebar_border_bottom = "#4b4b4b"
    },

    window_padding = {
        top = 0
    },

    keys = {
        {
            key = "q",
            mods = "CMD",
            action = wezterm.action.CloseCurrentTab {confirm = true}
        }
    }
    
}
return config
