-- =============================================================================
-- Manuscript theme snippet for Hyprland (Lua)
-- Copy this block into your Hyprland Lua config.
-- =============================================================================

-- Color palette (hex without #)
local manuscript = {
    bg            = "20262a",
    fg            = "f2ecce",
    orange        = "f88404",
    red           = "ea4a5a",
    green         = "34d058",
    yellow        = "e5c07b",
    blue          = "2188ff",
    magenta       = "aa7ed3",
    cyan          = "39c5cf",
    white         = "dcd7ba",
    bright_black  = "959da5",
    bright_red    = "f97583",
    bright_green  = "85e89d",
    bright_yellow = "ffea7f",
    bright_blue   = "79b8ff",
    bright_magenta= "b392f0",
    bright_cyan   = "56d4dd",
}

-- Visual settings: gaps, borders, opacity, blur, shadow
hl.config({
    general = {
        gaps_in     = 6,
        gaps_out    = 3,
        border_size = 1,
        col = {
            active_border = {
                colors = {
                    "rgba(ea4a5aee)",   -- red
                    "rgba(f88404ee)",   -- orange
                    "rgba(ffea7fee)",   -- bright yellow
                    "rgba(34d058ee)",   -- green
                    "rgba(39c5cfee)",   -- cyan
                    "rgba(2188ffee)",   -- blue
                    "rgba(aa7ed3ee)",   -- magenta
                },
                angle = 45,
            },
            inactive_border = "rgba(959da5aa)",  -- bright black with alpha
        },
        resize_on_border = false,
        allow_tearing    = false,
    },

    decoration = {
        rounding       = 6,
        rounding_power = 2,
        active_opacity   = 1.0,
        inactive_opacity = 0.65,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },
})
