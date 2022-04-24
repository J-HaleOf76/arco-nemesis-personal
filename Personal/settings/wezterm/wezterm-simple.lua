local wezterm = require 'wezterm';

local config = {
  check_for_updates            = false,
  color_scheme                 = "Gruvbox Dark",
  default_cursor_style         = "BlinkingUnderline",
  exit_behavior                = "Close",
  enable_wayland               = true,
  enable_tab_bar               = true,
  font                         = wezterm.font("Victor Mono", { weight = "Bold", italic = false }),
  font_size                    = 16.0,
  hide_tab_bar_if_only_one_tab = false,
  inactive_pane_hsb = {
    hue        = 1.0,
    saturation = 1.0,
    brightness = 1.0,
  },
  set_environment_variables    = {},
  tab_bar_at_bottom            = true,
  window_background_opacity    = 0.8,
  keys = {
    { key = "z"         , mods = "CTRL",       action = "TogglePaneZoomState" },
    { key = "-"         , mods = "CTRL",       action = wezterm.action{ SplitVertical    = { domain = "CurrentPaneDomain" }}},
    { key = "|"         , mods = "CTRL",       action = wezterm.action{ SplitHorizontal  = { domain = "CurrentPaneDomain" }}},
    { key = "n"         , mods = "CTRL|ALT",   action = wezterm.action{ SpawnTab         = "CurrentPaneDomain" }},

    { key = "LeftArrow" , mods = "CTRL",       action = wezterm.action{ ActivatePaneDirection = "Left"  }},
    { key = "DownArrow" , mods = "CTRL",       action = wezterm.action{ ActivatePaneDirection = "Down"  }},
    { key = "UpArrow"   , mods = "CTRL",       action = wezterm.action{ ActivatePaneDirection = "Up"    }},
    { key = "RightArrow", mods = "CTRL",       action = wezterm.action{ ActivatePaneDirection = "Right" }},

    { key = "LeftArrow" , mods = "CTRL|SHIFT", action = wezterm.action{ AdjustPaneSize   = { "Left" , 5 }}},
    { key = "DownArrow" , mods = "CTRL|SHIFT", action = wezterm.action{ AdjustPaneSize   = { "Down" , 5 }}},
    { key = "UpArrow"   , mods = "CTRL|SHIFT", action = wezterm.action{ AdjustPaneSize   = { "Up"   , 5 }}},
    { key = "RightArrow", mods = "CTRL|SHIFT", action = wezterm.action{ AdjustPaneSize   = { "Right", 5 }}},

    { key = "1"         , mods = "ALT",        action = wezterm.action{ ActivateTab      = 0 }},
    { key = "2"         , mods = "ALT",        action = wezterm.action{ ActivateTab      = 1 }},
    { key = "3"         , mods = "ALT",        action = wezterm.action{ ActivateTab      = 2 }},
    { key = "4"         , mods = "ALT",        action = wezterm.action{ ActivateTab      = 3 }},
    { key = "5"         , mods = "ALT",        action = wezterm.action{ ActivateTab      = 4 }},
    { key = "6"         , mods = "ALT",        action = wezterm.action{ ActivateTab      = 5 }},
    { key = "7"         , mods = "ALT",        action = wezterm.action{ ActivateTab      = 6 }},
    { key = "8"         , mods = "ALT",        action = wezterm.action{ ActivateTab      = 7 }},
    { key = "9"         , mods = "ALT",        action = wezterm.action{ ActivateTab      = 8 }},
    { key = "0"         , mods = "ALT",        action = wezterm.action{ ActivateTab      = 9 }},

    { key = "PageUp"    , mods = "",           action = wezterm.action{ ScrollByPage     = -1 }},
    { key = "PageDown"  , mods = "",           action = wezterm.action{ ScrollByPage     = 1  }},
    { key = "UpArrow"   , mods = "CTRL",       action = wezterm.action{ ScrollByLine     = -1 }},
    { key = "DownArrow" , mods = "CTRL",       action = wezterm.action{ ScrollByLine     = 1  }},

    { key = "q"         , mods = "CTRL|SHIFT", action = wezterm.action{ CloseCurrentTab  = { confirm = true }}},
  },
}

return config
