-- Basic rules for colors:
-- Regular text must have a contrast ratio of at least 7:1
-- Large and bold text must have a contrast ratio of at least 4.5:1
-- Non-text elements and state object (mouseover, focused, selected) must have a
-- contrast ratio of at least 3:1

local M = {}
---@class Palette
M.modus_operandi = {
    none = "NONE",

    -- Base values
    bg_main = "#ffffff",
    bg_dim = "#f2f2f2",
    bg_alt = "#f0f0f0",
    fg_main = "#000000",
    fg_dim = "#595959",
    fg_alt = "#193668",
    border = "#9f9f9f",
    border_highlight = "#3b3b3b",
    --
    -- Common foreground values
    red = "#ff5f59",
    red_warmer = "#ff6b55",
    red_cooler = "#ff7f9f",
    red_faint = "#ff9580",
    green = "#44bc44",
    green_warmer = "#70b900",
    green_cooler = "#00c06f",
    green_faint = "#88ca9f",
    yellow = "#d0bc00",
    yellow_warmer = "#fec43f",
    yellow_cooler = "#dfaf7a",
    yellow_faint = "#d2b580",
    blue = "#2fafff",
    blue_warmer = "#79a8ff",
    blue_cooler = "#00bcff",
    blue_faint = "#82b0ec",
    magenta = "#feacd0",
    magenta_warmer = "#f78fe7",
    magenta_cooler = "#b6a0ff",
    magenta_faint = "#caa6df",
    cyan = "#00d3d0",
    cyan_warmer = "#4ae2f0",
    cyan_cooler = "#6ae4b9",
    cyan_faint = "#9ac8e0",
    rust = "#db7b5f",
    gold = "#c0965b",
    olive = "#9cbd6f",
    slate = "#76afbf",
    indigo = "#9099d9",
    maroon = "#cf7fa7",
    pink = "#d09dc0",

    -- These foreground values can only be used for non-text elements with a 3:1
    -- contrast ratio. Combine with bg_main, bg_dim, bg_alt
    red_intense = "#ff5f5f",
    green_intense = "#44df44",
    yellow_intense = "#efef00",
    blue_intense = "#338fff",
    magenta_intense = "#ff66ff",
    cyan_intense = "#00eff0",

    -- Intense should only be combined with fg_main for text
    bg_red_intense = "#9d1f1f",
    bg_green_intense = "#2f822f",
    bg_yellow_intense = "#7a6100",
    bg_blue_intense = "#1640b0",
    bg_magenta_intense = "#7030af",
    bg_cyan_intense = "#2266ae",

    -- Subtle should be combined with fg_alt, fg_main
    bg_red_subtle = "#620f2a",
    bg_green_subtle = "#00422a",
    bg_yellow_subtle = "#4a4000",
    bg_blue_subtle = "#242679",
    bg_magenta_subtle = "#552f5f",
    bg_cyan_subtle = "#004065",

    -- Nuanced can be combined with corresponding foreground ie. bg_red_nuanced with red
    bg_red_nuanced = "#2c0614",
    bg_green_nuanced = "#001904",
    bg_yellow_nuanced = "#222000",
    bg_blue_nuanced = "#0f0e39",
    bg_magenta_nuanced = "#230631",
    bg_cyan_nuanced = "#041529",

    -- Special purpose
    bg_completion = "#2f447f",
    bg_hl_line = "#2f3849",
    bg_paren_match = "#2f7f9f",
    bg_paren_expression = "#453040",
    bg_char_0 = "#0050af",
    bg_char_1 = "#7f1f7f",
    bg_char_2 = "#625a00",
    -- Common active/inactive colors
    bg_active = "#303030",
    fg_active = "#f4f4f4",
    bg_inactive = "#282828",
    fg_inactive = "#bfc0c4",
    -- Status line specific colors
    bg_status_line_active = "#404040",
    fg_status_line_active = "#f0f0f0",
    bg_status_line_inactive = "#2d2d2d",
    fg_status_line_inactive = "#969696",
    -- tab bar colors for tab pages
    bg_tab_bar = "#313131",
    bg_tab_current = "#000000",
    bg_tab_other = "#545454",
    fg_tab_other = "#f7f7f7",
    bg_tab_alternate = "#545490",
    -- git diffs
    bg_added = "#00381f",
    bg_added_faint = "#002910",
    bg_added_refine = "#034f2f",
    bg_added_fringe = "#237f3f",
    fg_added = "#a0e0a0",
    fg_added_intense = "#80e080",
    bg_changed = "#363300",
    bg_changed_faint = "#2a1f00",
    bg_changed_refine = "#4a4a00",
    bg_changed_fringe = "#8a7a00",
    fg_changed = "#efef80",
    fg_changed_intense = "#c0b05f",
    bg_removed = "#4f1119",
    bg_removed_faint = "#380a0f",
    bg_removed_refine = "#781a1f",
    bg_removed_fringe = "#b81a1f",
    fg_removed = "#ffbfbf",
    fg_removed_intense = "#ff9095",
    bg_diff_context = "#1a1a1a",

    -- Tinted Variant
    tinted_bg_main = "#0d0e1c",
    tinted_bg_dim = "#1d2235",
    tinted_border = "#61647a",
    tinted_border_highlight = "#b290b0",
    tinted_bg_active = "#4a4f69",
    tinted_bg_inactive = "#2b3045",
    tinted_red_faint = "#ff9f80",
    tinted_bg_red_nuanced = "#350f14",
    tinted_bg_green_nuanced = "#002718",
    tinted_bg_yellow_nuanced = "#2c1f00",
    tinted_bg_blue_nuanced = "#131c4d",
    tinted_bg_magenta_nuanced = "#2f133f",
    tinted_bg_cyan_nuanced = "#04253f",
    tinted_bg_completion = "#483d8a",
    tinted_bg_hl_line = "#303a6f",
    tinted_bg_paren_match = "#2f7f9f",
    tinted_bg_status_line_active = "#393F51",
    tinted_bg_status_line_inactive = "#292d48",
    tinted_bg_tab_bar = "#2c3045",
    tinted_bg_tab_current = "#0d0e1c",
    tinted_bg_tab_other = "#4a4f6a",
    tinted_bg_tab_alternate = "#4a4f94",
    tinted_bg_added = "#003a2f",
    tinted_bg_added_faint = "#002922",
    tinted_bg_added_refine = "#035542",
    tinted_bg_added_fringe = "#23884f",
    tinted_bg_changed_fringe = "#8f7a30",
    tinted_bg_removed = "#4f1127",
    tinted_bg_removed_faint = "#380a19",
    tinted_bg_removed_refine = "#781a3a",
    tinted_bg_removed_fringe = "#b81a26",
    tinted_bg_diff_context = "#1a1f30",

    -- Deuteranopia Variant
    deuteranopia_yellow = "#cabf00",
    deuteranopia_yellow_warmer = "#ffa00f",
    deuteranopia_yellow_cooler = "#d8af7a",
    deuteranopia_bg_status_line_active = "#2a2a6a",
    deuteranopia_fg_status_line_active = "#f0f0f0",
    deuteranopia_bg_added = "#003066",
    deuteranopia_bg_added_faint = "#001a4f",
    deuteranopia_bg_added_refine = "#0f4a77",
    deuteranopia_bg_added_fringe = "#006fff",
    deuteranopia_fg_added = "#c4d5ff",
    deuteranopia_fg_added_intense = "#8080ff",
    deuteranopia_bg_changed = "#2f123f",
    deuteranopia_bg_changed_faint = "#1f022f",
    deuteranopia_bg_changed_refine = "#3f325f",
    deuteranopia_bg_changed_fringe = "#7f55a0",
    deuteranopia_fg_changed = "#e3cfff",
    deuteranopia_fg_changed_intense = "#cf9fe2",
    deuteranopia_bg_removed = "#3d3d00",
    deuteranopia_bg_removed_faint = "#281f00",
    deuteranopia_bg_removed_refine = "#555500",
    deuteranopia_bg_removed_fringe = "#d0c03f",
    deuteranopia_fg_removed = "#d4d48f",
    deuteranopia_fg_removed_intense = "#d0b05f",

    -- Tritanopia Variant
    tritanopia_red_warmer = "#ff6740",
    tritanopia_red_cooler = "#ff6f9f",
    tritanopia_red_faint = "#ff9070",
    tritanopia_yellow = "#cabf00",
    tritanopia_yellow_warmer = "#ffa00f",
    tritanopia_yellow_cooler = "#d8af7a",
    tritanopia_cyan_warmer = "#4ae2ff",
    tritanopia_cyan_faint = "#7fdbdf",
    tritanopia_magenta_intense = "#ef7fff",
    tritanopia_bg_completion = "#004253",
    tritanopia_bg_hl_line = "#2f3849",
    tritanopia_bg_char_0 = "#922a00",
    tritanopia_bg_char_1 = "#00709f",
    tritanopia_bg_char_2 = "#5f3faf",
    tritanopia_bg_status_line_active = "#003c52",
    tritanopia_fg_status_line_active = "#f0f0f0",
    tritanopia_bg_added = "#004254",
    tritanopia_bg_added_faint = "#003042",
    tritanopia_bg_added_refine = "#004f7f",
    tritanopia_bg_added_fringe = "#008fcf",
    tritanopia_fg_added = "#9fdfdf",
    tritanopia_fg_added_intense = "#50c0ef",
    tritanopia_bg_changed = "#2f123f",
    tritanopia_bg_changed_faint = "#1f022f",
    tritanopia_bg_changed_refine = "#3f325f",
    tritanopia_bg_changed_fringe = "#7f55a0",
    tritanopia_fg_changed = "#e3cfff",
    tritanopia_fg_changed_intense = "#cf9fe2",
}

---@class Palette
M.modus_vivendi = {
    none = "NONE",

    -- Base values
    bg_main = "#000000",
    bg_dim = "#1e1e1e",
    bg_alt = "#0f0f0f",
    fg_main = "#ffffff",
    fg_dim = "#989898",
    fg_alt = "#c6daff",
    border = "#646464",
    border_highlight = "#C4C4C4",

    -- Common foreground values
    red = "#ff5f59",
    red_warmer = "#ff6b55",
    red_cooler = "#ff7f9f",
    red_faint = "#ff9580",
    green = "#44bc44",
    green_warmer = "#70b900",
    green_cooler = "#00c06f",
    green_faint = "#88ca9f",
    yellow = "#d0bc00",
    yellow_warmer = "#fec43f",
    yellow_cooler = "#dfaf7a",
    yellow_faint = "#d2b580",
    blue = "#2fafff",
    blue_warmer = "#79a8ff",
    blue_cooler = "#00bcff",
    blue_faint = "#82b0ec",
    magenta = "#feacd0",
    magenta_warmer = "#f78fe7",
    magenta_cooler = "#b6a0ff",
    magenta_faint = "#caa6df",
    cyan = "#00d3d0",
    cyan_warmer = "#4ae2f0",
    cyan_cooler = "#6ae4b9",
    cyan_faint = "#9ac8e0",
    rust = "#db7b5f",
    gold = "#c0965b",
    olive = "#9cbd6f",
    slate = "#76afbf",
    indigo = "#9099d9",
    maroon = "#cf7fa7",
    pink = "#d09dc0",

    -- These foreground values can only be used for non-text elements with a 3:1
    -- contrast ratio. Combine with bg_main, bg_dim, bg_alt
    red_intense = "#ff5f5f",
    green_intense = "#44df44",
    yellow_intense = "#efef00",
    blue_intense = "#338fff",
    magenta_intense = "#ff66ff",
    cyan_intense = "#00eff0",

    -- Intense should only be combined with fg_main for text
    bg_red_intense = "#9d1f1f",
    bg_green_intense = "#2f822f",
    bg_yellow_intense = "#7a6100",
    bg_blue_intense = "#1640b0",
    bg_magenta_intense = "#7030af",
    bg_cyan_intense = "#2266ae",

    -- Subtle should be combined with fg_alt, fg_main
    bg_red_subtle = "#620f2a",
    bg_green_subtle = "#00422a",
    bg_yellow_subtle = "#4a4000",
    bg_blue_subtle = "#242679",
    bg_magenta_subtle = "#552f5f",
    bg_cyan_subtle = "#004065",

    -- Nuanced can be combined with corresponding foreground ie. bg_red_nuanced with red
    bg_red_nuanced = "#2c0614",
    bg_green_nuanced = "#001904",
    bg_yellow_nuanced = "#222000",
    bg_blue_nuanced = "#0f0e39",
    bg_magenta_nuanced = "#230631",
    bg_cyan_nuanced = "#041529",

    -- Special purpose
    bg_completion = "#2f447f",
    bg_hl_line = "#2f3849",
    bg_paren_match = "#2f7f9f",
    bg_paren_expression = "#453040",
    bg_char_0 = "#0050af",
    bg_char_1 = "#7f1f7f",
    bg_char_2 = "#625a00",
    -- Common active/inactive colors
    bg_active = "#303030",
    fg_active = "#f4f4f4",
    bg_inactive = "#282828",
    fg_inactive = "#bfc0c4",
    -- Status line specific colors
    bg_status_line_active = "#404040",
    fg_status_line_active = "#f0f0f0",
    bg_status_line_inactive = "#2d2d2d",
    fg_status_line_inactive = "#969696",
    -- tab bar colors for tab pages
    bg_tab_bar = "#313131",
    bg_tab_current = "#000000",
    bg_tab_other = "#545454",
    fg_tab_other = "#f7f7f7",
    bg_tab_alternate = "#545490",
    -- git diffs
    bg_added = "#00381f",
    bg_added_faint = "#002910",
    bg_added_refine = "#034f2f",
    bg_added_fringe = "#237f3f",
    fg_added = "#a0e0a0",
    fg_added_intense = "#80e080",
    bg_changed = "#363300",
    bg_changed_faint = "#2a1f00",
    bg_changed_refine = "#4a4a00",
    bg_changed_fringe = "#8a7a00",
    fg_changed = "#efef80",
    fg_changed_intense = "#c0b05f",
    bg_removed = "#4f1119",
    bg_removed_faint = "#380a0f",
    bg_removed_refine = "#781a1f",
    bg_removed_fringe = "#b81a1f",
    fg_removed = "#ffbfbf",
    fg_removed_intense = "#ff9095",
    bg_diff_context = "#1a1a1a",

    -- Tinted Variant
    tinted_bg_main = "#0d0e1c",
    tinted_bg_dim = "#1d2235",
    tinted_border = "#61647a",
    tinted_border_highlight = "#b290b0",
    tinted_bg_active = "#4a4f69",
    tinted_bg_inactive = "#2b3045",
    tinted_red_faint = "#ff9f80",
    tinted_bg_red_nuanced = "#350f14",
    tinted_bg_green_nuanced = "#002718",
    tinted_bg_yellow_nuanced = "#2c1f00",
    tinted_bg_blue_nuanced = "#131c4d",
    tinted_bg_magenta_nuanced = "#2f133f",
    tinted_bg_cyan_nuanced = "#04253f",
    tinted_bg_completion = "#483d8a",
    tinted_bg_hl_line = "#303a6f",
    tinted_bg_paren_match = "#2f7f9f",
    tinted_bg_status_line_active = "#393F51",
    tinted_bg_status_line_inactive = "#292d48",
    tinted_bg_tab_bar = "#2c3045",
    tinted_bg_tab_current = "#0d0e1c",
    tinted_bg_tab_other = "#4a4f6a",
    tinted_bg_tab_alternate = "#4a4f94",
    tinted_bg_added = "#003a2f",
    tinted_bg_added_faint = "#002922",
    tinted_bg_added_refine = "#035542",
    tinted_bg_added_fringe = "#23884f",
    tinted_bg_changed_fringe = "#8f7a30",
    tinted_bg_removed = "#4f1127",
    tinted_bg_removed_faint = "#380a19",
    tinted_bg_removed_refine = "#781a3a",
    tinted_bg_removed_fringe = "#b81a26",
    tinted_bg_diff_context = "#1a1f30",

    -- Deuteranopia Variant
    deuteranopia_yellow = "#cabf00",
    deuteranopia_yellow_warmer = "#ffa00f",
    deuteranopia_yellow_cooler = "#d8af7a",
    deuteranopia_bg_status_line_active = "#2a2a6a",
    deuteranopia_fg_status_line_active = "#f0f0f0",
    deuteranopia_bg_added = "#003066",
    deuteranopia_bg_added_faint = "#001a4f",
    deuteranopia_bg_added_refine = "#0f4a77",
    deuteranopia_bg_added_fringe = "#006fff",
    deuteranopia_fg_added = "#c4d5ff",
    deuteranopia_fg_added_intense = "#8080ff",
    deuteranopia_bg_changed = "#2f123f",
    deuteranopia_bg_changed_faint = "#1f022f",
    deuteranopia_bg_changed_refine = "#3f325f",
    deuteranopia_bg_changed_fringe = "#7f55a0",
    deuteranopia_fg_changed = "#e3cfff",
    deuteranopia_fg_changed_intense = "#cf9fe2",
    deuteranopia_bg_removed = "#3d3d00",
    deuteranopia_bg_removed_faint = "#281f00",
    deuteranopia_bg_removed_refine = "#555500",
    deuteranopia_bg_removed_fringe = "#d0c03f",
    deuteranopia_fg_removed = "#d4d48f",
    deuteranopia_fg_removed_intense = "#d0b05f",

    -- Tritanopia Variant
    tritanopia_red_warmer = "#ff6740",
    tritanopia_red_cooler = "#ff6f9f",
    tritanopia_red_faint = "#ff9070",
    tritanopia_yellow = "#cabf00",
    tritanopia_yellow_warmer = "#ffa00f",
    tritanopia_yellow_cooler = "#d8af7a",
    tritanopia_cyan_warmer = "#4ae2ff",
    tritanopia_cyan_faint = "#7fdbdf",
    tritanopia_magenta_intense = "#ef7fff",
    tritanopia_bg_completion = "#004253",
    tritanopia_bg_hl_line = "#2f3849",
    tritanopia_bg_char_0 = "#922a00",
    tritanopia_bg_char_1 = "#00709f",
    tritanopia_bg_char_2 = "#5f3faf",
    tritanopia_bg_status_line_active = "#003c52",
    tritanopia_fg_status_line_active = "#f0f0f0",
    tritanopia_bg_added = "#004254",
    tritanopia_bg_added_faint = "#003042",
    tritanopia_bg_added_refine = "#004f7f",
    tritanopia_bg_added_fringe = "#008fcf",
    tritanopia_fg_added = "#9fdfdf",
    tritanopia_fg_added_intense = "#50c0ef",
    tritanopia_bg_changed = "#2f123f",
    tritanopia_bg_changed_faint = "#1f022f",
    tritanopia_bg_changed_refine = "#3f325f",
    tritanopia_bg_changed_fringe = "#7f55a0",
    tritanopia_fg_changed = "#e3cfff",
    tritanopia_fg_changed_intense = "#cf9fe2",
}

---@return ColorScheme
function M.setup(opts)
    opts = opts or {}
    local config = require("modus-themes.config")

    local style = config.is_light() and "modus_operandi" or "modus_vivendi"
    local variant = config.options.variant

    -- Color Palette
    ---@class ColorScheme: Palette
    local colors = vim.deepcopy(M[style])

    colors.bg_sidebar = colors.bg_dim
    colors.fg_sidebar = colors.fg_main

    colors.cursor = colors.fg_main
    colors.comment = colors.fg_dim
    colors.error = colors.red_cooler
    colors.warning = colors.yellow_cooler
    colors.info = colors.blue_cooler
    colors.hint = colors.cyan_faint
    colors.ok = colors.green_cooler
    colors.success = colors.fg_added
    colors.visual = colors.bg_blue_intense
    colors.accent_light = colors.blue_faint
    colors.accent = colors.blue_warmer
    colors.accent_darker = colors.blue
    colors.accent_dark = colors.blue_intense

    if variant == "tinted" then
        colors.bg_main = colors.tinted_bg_main
        colors.bg_dim = colors.tinted_bg_dim
        colors.bg_active = colors.tinted_bg_active
        colors.bg_inactive = colors.tinted_bg_inactive
        colors.border = colors.tinted_border
        colors.border_highlight = colors.tinted_border_highlight
        colors.red_faint = colors.tinted_red_faint
        colors.bg_red_nuanced = colors.tinted_bg_red_nuanced
        colors.bg_green_nuanced = colors.tinted_bg_green_nuanced
        colors.bg_yellow_nuanced = colors.tinted_bg_yellow_nuanced
        colors.bg_blue_nuanced = colors.tinted_bg_blue_nuanced
        colors.bg_magenta_nuanced = colors.tinted_bg_magenta_nuanced
        colors.bg_cyan_nuanced = colors.tinted_bg_cyan_nuanced
        colors.bg_completion = colors.tinted_bg_completion
        colors.bg_hl_line = colors.tinted_bg_hl_line
        colors.bg_status_line_active = colors.tinted_bg_status_line_active
        colors.bg_status_line_inactive = colors.tinted_bg_status_line_inactive
        colors.bg_tab_bar = colors.tinted_bg_tab_bar
        colors.bg_tab_current = colors.tinted_bg_tab_current
        colors.bg_tab_other = colors.tinted_bg_tab_other
        colors.bg_tab_alternate = colors.tinted_bg_tab_alternate
        colors.bg_added = colors.tinted_bg_added
        colors.bg_added_faint = colors.tinted_bg_added_faint
        colors.bg_added_refine = colors.tinted_bg_added_refine
        colors.bg_added_fringe = colors.tinted_bg_added_fringe
        colors.bg_changed_fringe = colors.tinted_bg_changed_fringe
        colors.bg_removed = colors.tinted_bg_removed
        colors.bg_removed_faint = colors.tinted_bg_removed_faint
        colors.bg_removed_refine = colors.tinted_bg_removed_refine
        colors.bg_removed_fringe = colors.tinted_bg_removed_fringe
        colors.bg_diff_context = colors.tinted_bg_diff_context
        colors.bg_paren_match = colors.tinted_bg_paren_match

        colors.comment = colors.tinted_red_faint

        if style == "modus_operandi" then
            colors.cursor = colors.red
        end
        if style == "modus_vivendi" then
            colors.cursor = colors.magenta_warmer
        end
    end

    if variant == "deuteranopia" then
        colors.yellow = colors.deuteranopia_yellow
        colors.yellow_warmer = colors.deuteranopia_yellow_warmer
        colors.yellow_cooler = colors.deuteranopia_yellow_cooler
        colors.bg_status_line_active = colors.deuteranopia_bg_status_line_active
        colors.fg_status_line_active = colors.deuteranopia_fg_status_line_active
        colors.bg_added = colors.deuteranopia_bg_added
        colors.bg_added_faint = colors.deuteranopia_bg_added_faint
        colors.bg_added_refine = colors.deuteranopia_bg_added_refine
        colors.bg_added_fringe = colors.deuteranopia_bg_added_fringe
        colors.fg_added = colors.deuteranopia_fg_added
        colors.fg_added_intense = colors.deuteranopia_fg_added_intense
        colors.bg_changed = colors.deuteranopia_bg_changed
        colors.bg_changed_faint = colors.deuteranopia_bg_changed_faint
        colors.bg_changed_refine = colors.deuteranopia_bg_changed_refine
        colors.bg_changed_fringe = colors.deuteranopia_bg_changed_fringe
        colors.fg_changed = colors.deuteranopia_fg_changed
        colors.fg_changed_intense = colors.deuteranopia_fg_changed_intense
        colors.bg_removed = colors.deuteranopia_bg_removed
        colors.bg_removed_faint = colors.deuteranopia_bg_removed_faint
        colors.bg_removed_refine = colors.deuteranopia_bg_removed_refine
        colors.bg_removed_fringe = colors.deuteranopia_bg_removed_fringe
        colors.fg_removed = colors.deuteranopia_fg_removed
        colors.fg_removed_intense = colors.deuteranopia_fg_removed_intense

        colors.comment = colors.deuteranopia_yellow_cooler
        colors.error = colors.deuteranopia_yellow_warmer
        colors.warning = colors.deuteranopia_yellow
        colors.info = colors.blue
        colors.success = colors.deuteranopia_fg_added

        if style == "modus_operandi" then
            colors.cursor = colors.blue_intense
        end
        if style == "modus_vivendi" then
            colors.cursor = colors.yellow_intense
        end
    end

    if variant == "tritanopia" then
        colors.red_warmer = colors.tritanopia_red_warmer
        colors.red_cooler = colors.tritanopia_red_cooler
        colors.red_faint = colors.tritanopia_red_faint
        colors.yellow = colors.tritanopia_yellow
        colors.yellow_warmer = colors.tritanopia_yellow_warmer
        colors.yellow_cooler = colors.tritanopia_yellow_cooler
        colors.magenta_intense = colors.tritanopia_magenta_intense
        colors.cyan_warmer = colors.tritanopia_cyan_warmer
        colors.cyan_faint = colors.tritanopia_cyan_faint
        colors.bg_completion = colors.tritanopia_bg_completion
        colors.bg_hl_line = colors.tritanopia_bg_hl_line
        colors.bg_char_0 = colors.tritanopia_bg_char_0
        colors.bg_char_1 = colors.tritanopia_bg_char_1
        colors.bg_char_2 = colors.tritanopia_bg_char_2
        colors.bg_status_line_active = colors.tritanopia_bg_status_line_active
        colors.fg_status_line_active = colors.tritanopia_fg_status_line_active
        colors.bg_added = colors.tritanopia_bg_added
        colors.bg_added_faint = colors.tritanopia_bg_added_faint
        colors.bg_added_refine = colors.tritanopia_bg_added_refine
        colors.bg_added_fringe = colors.tritanopia_bg_added_fringe
        colors.fg_added = colors.tritanopia_fg_added
        colors.fg_added_intense = colors.tritanopia_fg_added_intense
        colors.bg_changed = colors.tritanopia_bg_changed
        colors.bg_changed_faint = colors.tritanopia_bg_changed_faint
        colors.bg_changed_refine = colors.tritanopia_bg_changed_refine
        colors.bg_changed_fringe = colors.tritanopia_bg_changed_fringe
        colors.fg_changed = colors.tritanopia_fg_changed
        colors.fg_changed_intense = colors.tritanopia_fg_changed_intense

        colors.comment = colors.tritanopia_red_faint
        colors.error = colors.red_warmer
        colors.warning = colors.magenta
        colors.info = colors.cyan
        colors.success = colors.tritanopia_fg_added

        colors.cursor = colors.red_intense
    end
    config.options.on_colors(colors)

    return colors
end

return M
