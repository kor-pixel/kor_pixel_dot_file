local wezterm = require "wezterm"
local act = wezterm.action


local config = {
    color_scheme = "seoulbones_dark",
    font = wezterm.font "D2Coding ligature",
    font_size = 15,
    hide_tab_bar_if_only_one_tab = true,
    --enable_scroll_bar = true,
    colors = { cursor_fg = "black", tab_bar = { inactive_tab_edge = "#4b4b4b" } },
    -- ###### Below: border bottom is wayland fix from 2022 ######
    window_frame = { inactive_titlebar_bg = "#4b4b4b", active_titlebar_bg = "#4b4b4b", inactive_titlebar_border_bottom = "#4b4b4b", active_titlebar_border_bottom = "#4b4b4b" },
    window_padding = { top = 0 },
    keys = {
        { key = "q",          mods = "CMD",       action = act.CloseCurrentTab { confirm = true } }, -- CMD + Q                  - (Quit Tab)
        { key = ".",          mods = "CMD",       action = act.SendString("\003") },                 -- CMD + .                  - (Terminate Command)
        { key = "Backspace",  mods = "CMD",       action = act.SendString("\x1b\x7f") },             -- CMD + Backspace          - (Delete Previous word)
        { key = "r",          mods = "CMD|SHIFT", action = act.ReloadConfiguration },                -- CMD + SHIFT + R          - (Reload Config)
        { key = "x",          mods = "CMD|SHIFT", action = act.ActivateCopyMode },                   -- CMD + SHIFT + X          - (Copy Mode)
        { key = "c",          mods = "CMD|SHIFT", action = act.SendString("clear\x0d") },            -- CMD + Shift + C          - (Clear and Enter)
        { key = "LeftArrow",  mods = "CMD",       action = act.SendString("\x1bb") },                -- CMD + LeftArrow          - (Jump Word Left)
        { key = "RightArrow", mods = "CMD",       action = act.SendString("\x1bf") },                -- CMD + RightArrow         - (Jump Word Right)
        { key = "LeftArrow",  mods = "CMD|SHIFT", action = act.SendKey { key = 'Home' } },           -- CMD + SHFT + LeftArrow   - (Jump to start)
        { key = "RightArrow", mods = "CMD|SHIFT", action = act.SendKey { key = 'End' } },            -- CMD + SHFT + Right Arrow - (Jump to end)
        --{ key = "v",        mods = "CTRL",      action = act.Nop },                                -- fix for ^[[200~ paste issue?
    },
    mouse_bindings = {
        { event = { Drag = { streak = 1, button = "Left" } }, mods = "CMD", action = act.StartWindowDrag } -- CMD + Drag (Move Window)
    }
}

return config

-- Suggested Changes:
-- ---------------
-- remove shortcut to close the current tab (just use CMD + w instead ?) -> Not sure if it also workds on linux and windows and mac
-- Still testing new commands might need additional keybinds for linux/windows
-- Test if that pasting fix is needed or not.

-- Future:
-- ---------------
-- Cant figure out how to move the cursor with mouse
-- Cant figure out how to highlight previous or next word e.g. CMD+SHIFT+Arrows
-- Cant figure out how to increase the speed of backspace held down
-- Cant figure out a delete line command (CMD + SHIFT + Backspace)
-- https://wezfurlong.org/wezterm/config/lua/keyassignment/ClearSelection.html (clear mouse selection ?)
