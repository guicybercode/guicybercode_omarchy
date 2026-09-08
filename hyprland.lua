-- guicybercode_omarchy — Hyprland look'n'feel shipped with the theme.
-- This file replaces the palette-generated hyprland.lua, so it must define the
-- border colors itself in addition to the theme's spacing and transparency.

local active_border_color = "rgb(3a403b)"
local inactive_border_color = "rgb(05050a)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },

    border_size = 2,
    gaps_in = 8,
    gaps_out = 12,
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 0,

    -- Slight transparency on every window; fullscreen stays opaque so media
    -- and focused work keep full legibility.
    active_opacity = 0.85,
    inactive_opacity = 0.75,
    fullscreen_opacity = 1.0,
  },
})
