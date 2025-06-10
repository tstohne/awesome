---------------------------
-- Zenburn awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

-- Font
theme.font = "SauceCodePro Nerd Font 12"

-- Background colors
theme.bg_normal     = "#3f3f3f"
theme.bg_focus      = "#4f4f4f"
theme.bg_urgent     = "#cc9393"
theme.bg_minimize   = "#2b2b2b"
theme.bg_systray    = "#3f3f3f"

-- Foreground colors
theme.fg_normal     = "#dcdccc"
theme.fg_focus      = "#ffffef"
theme.fg_urgent     = "#ffffef"
theme.fg_minimize   = "#656555"

-- Borders
theme.useless_gap   = dpi(4)
theme.border_width  = dpi(2)
theme.border_normal = "#2b2b2b"
theme.border_focus  = "#8cd0d3"
theme.border_marked = "#dfaf8f"

-- Taglist
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    dpi(4), "#7f9f7f"
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    dpi(4), "#656555"
)

-- Menu
theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width = dpi(150)
theme.menu_border_color = "#2b2b2b"
theme.menu_border_width = dpi(1)
theme.menu_bg_normal = "#3f3f3f"
theme.menu_bg_focus = "#4f4f4f"
theme.menu_fg_normal = "#dcdccc"
theme.menu_fg_focus = "#ffffef"

-- Wibar
theme.wibar_height = dpi(24)
theme.wibar_bg = "#3f3f3f"
theme.wibar_fg = "#dcdccc"
theme.wibar_border_width = dpi(1)
theme.wibar_border_color = "#2b2b2b"

-- Hotkeys
theme.hotkeys_bg = "#3f3f3f"
theme.hotkeys_fg = "#dcdccc"
theme.hotkeys_border_width = dpi(1)
theme.hotkeys_border_color = "#8cd0d3"
theme.hotkeys_modifiers_fg = "#f0dfaf"
theme.hotkeys_label_fg = "#7f9f7f"
theme.hotkeys_font = "SauceCodePro Nerd Font Bold 14"
theme.hotkeys_description_font = "SauceCodePro Nerd Font 12"

-- Prompt
theme.prompt_bg = "#3f3f3f"
theme.prompt_fg = "#dcdccc"
theme.prompt_bg_cursor = "#f0dfaf"
theme.prompt_fg_cursor = "#3f3f3f"

-- Tooltips
theme.tooltip_border_color = "#4f4f4f"
theme.tooltip_bg = "#2b2b2b"
theme.tooltip_fg = "#dcdccc"
theme.tooltip_font = "SauceCodePro Nerd Font 12"
theme.tooltip_border_width = dpi(1)
theme.tooltip_opacity = 0.9

-- Notification
theme.notification_font = "SauceCodePro Nerd Font 13"
theme.notification_bg = "#4f4f4f"
theme.notification_fg = "#dcdccc"
theme.notification_border_width = dpi(2)
theme.notification_border_color = "#8cd0d3"
theme.notification_shape = function(cr, w, h)
    require("gears.shape").rounded_rect(cr, w, h, dpi(4))
end
theme.notification_opacity = 0.95
theme.notification_margin = dpi(8)
theme.notification_width = dpi(350)
theme.notification_height = dpi(80)

-- Tasklist
theme.tasklist_bg_normal = "#3f3f3f"
theme.tasklist_bg_focus = "#4f4f4f"
theme.tasklist_bg_urgent = "#cc9393"
theme.tasklist_bg_minimize = "#2b2b2b"
theme.tasklist_fg_normal = "#dcdccc"
theme.tasklist_fg_focus = "#ffffef"
theme.tasklist_fg_urgent = "#ffffef"
theme.tasklist_fg_minimize = "#656555"
theme.tasklist_disable_icon = false
theme.tasklist_plain_task_name = true
theme.tasklist_align = "center"

-- Titlebar
theme.titlebar_bg_focus = "#4f4f4f"
theme.titlebar_bg_normal = "#3f3f3f"
theme.titlebar_fg_focus = "#ffffef"
theme.titlebar_fg_normal = "#dcdccc"

-- Titlebar buttons
local titlebar_path = themes_path.."default/titlebar/"
theme.titlebar_close_button_normal = titlebar_path.."close_normal.png"
theme.titlebar_close_button_focus = titlebar_path.."close_focus.png"
theme.titlebar_minimize_button_normal = titlebar_path.."minimize_normal.png"
theme.titlebar_minimize_button_focus = titlebar_path.."minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive = titlebar_path.."ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = titlebar_path.."ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = titlebar_path.."ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = titlebar_path.."ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive = titlebar_path.."sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = titlebar_path.."sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = titlebar_path.."sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = titlebar_path.."sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive = titlebar_path.."floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = titlebar_path.."floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = titlebar_path.."floating_normal_active.png"
theme.titlebar_floating_button_focus_active = titlebar_path.."floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = titlebar_path.."maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = titlebar_path.."maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = titlebar_path.."maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = titlebar_path.."maximized_focus_active.png"

-- Layout icons
local layout_path = themes_path.."default/layouts/"
theme.layout_fairh = layout_path.."fairhw.png"
theme.layout_fairv = layout_path.."fairvw.png"
theme.layout_floating = layout_path.."floatingw.png"
theme.layout_magnifier = layout_path.."magnifierw.png"
theme.layout_max = layout_path.."maxw.png"
theme.layout_fullscreen = layout_path.."fullscreenw.png"
theme.layout_tilebottom = layout_path.."tilebottomw.png"
theme.layout_tileleft = layout_path.."tileleftw.png"
theme.layout_tile = layout_path.."tilew.png"
theme.layout_tiletop = layout_path.."tiletopw.png"
theme.layout_spiral = layout_path.."spiralw.png"
theme.layout_dwindle = layout_path.."dwindlew.png"
theme.layout_cornernw = layout_path.."cornernww.png"
theme.layout_cornerne = layout_path.."cornernew.png"
theme.layout_cornersw = layout_path.."cornersww.png"
theme.layout_cornerse = layout_path.."cornersew.png"

-- Awesome icon
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, "#8cd0d3", "#3f3f3f"
)

-- Wallpaper
theme.wallpaper = function(s)
    -- Generate a solid color wallpaper
    return theme_assets.wallpaper("#2b2b2b", s)
end

-- Generate Awesome icon
theme.icon_theme = nil

return theme
