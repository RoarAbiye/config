---------------------------
-- Default awesome theme --
---------------------------
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local gears = require("gears")

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}
theme.font = "Hack Nerd Font 9"
theme.taglist_font = "Font Awesome 5 Free Solid 12"
theme.bg_active_tag = "#550000"
theme.bg_normal = "#1d2021aa"
theme.bg_focus = "#3c3836"
theme.bg_urgent = "#fe8801aa"
theme.bg_minimize = "#1d2021"
theme.bg_systray = theme.bg_normal
theme.tasklist_bg_focus = "#45858888"

theme.taglist_bg_focus =  "#45858888"
theme.taglist_fg_focus =  "#8ec07c"

theme.taglist_fg_empty =  "#45858888"
-- theme.taglist_bg_empty =  "#f9f5d744"

theme.taglist_fg_occupied =  "#f9f5d7"


-- local myshape = gears.shape.partially_rounded_rect(cr, 70, 70, true, true, false, true, 30)

-- theme.taglist_shape = gears.shape.partially_rounded_rect(70, 70, true, true, false, true, 30)
-- theme.taglist_shape = gears.shape.rounded_rect(cr, 70, 70, true, true, false, true, 30)
-- theme.taglist_shape = gears.shape.parallelogram
-- theme.taglist_shape = gears.shape.transform(gears.shape.parallelogram) : scale(0.5, 1)(cr,70,70)

theme.taglist_shape = function(cr, width, height)
    -- gears.shape.rounded_rect(cr, width, height, 2)
    gears.shape.partially_rounded_rect(cr, 22, 22, false, false, true, true, 10)

    end

-- theme.tasklist_shape = function(cr, width, height)
--     -- gears.shape.rounded_rect(cr, width, height, 2)
--     gears.shape.partially_rounded_rect(cr, 1000, 20, false, true, true, true, 15)

--     end
theme.taglist_spacing = 0
-- beautiful.progressbar_bg = "#83a598aa"
-- beautiful.progressbar_fg = "#83a598aa"

-- "#ffd700"
-- "#333300"


theme.fg_normal = "#f9f5d7"
theme.fg_focus = "#ffd700"
--theme.fg_focus = "#fbf1c7"
theme.fg_urgent = "#f9f5d7"
theme.fg_minimize = "#fbf1c7"
theme.tasklist_fg_focus = "#f9f5d7"
theme.tasklist_fg_normal = "#fbf1c7"

theme.useless_gap = dpi(8)
theme.border_width = dpi(1)
theme.border_margin = dpi(5)
theme.border_normal = "#00000000"
theme.border_focus = "#b8bb26"
-- theme.border_focus = "#fb493455"
theme.border_marked = "#ff241d00"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
-- theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
-- local taglist_square_size = dpi(7)
-- taglist_square_size, theme.fg_normal)

-- theme.taglist_squares_sel = theme_assets.taglist_squares_sel(dpi(7), "#aaaaaaff")
-- theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(dpi(5), "#999999ff")


-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]
theme.notification_border_color = "#cc241d"
theme.notification_border_width = 50
theme.notificatin_opacity = .5

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
-- theme.menu_submenu_icon = "/usr/share/icons/breeze-dark/actions/24/go-next.svg"
theme.menu_height = dpi(25)
theme.menu_width = dpi(150)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
-- theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path ..
                                         "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus = themes_path ..
                                        "default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path ..
                                            "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus = themes_path ..
                                           "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path ..
                                                  "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = themes_path ..
                                                 "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path ..
                                                "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = themes_path ..
                                               "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path ..
                                                   "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = themes_path ..
                                                  "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path ..
                                                 "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = themes_path ..
                                                "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path ..
                                                     "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = themes_path ..
                                                    "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path ..
                                                   "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = themes_path ..
                                                  "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path ..
                                                      "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path ..
                                                     "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path ..
                                                    "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themes_path ..
                                                   "default/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path .. "default/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path .. "default/layouts/fairhw.png"
theme.layout_fairv = themes_path .. "default/layouts/fairvw.png"
theme.layout_floating = themes_path .. "default/layouts/floatingw.png"
theme.layout_magnifier = themes_path .. "default/layouts/magnifierw.png"
theme.layout_max = themes_path .. "default/layouts/maxw.png"
theme.layout_fullscreen = themes_path .. "default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path .. "default/layouts/tilebottomw.png"
theme.layout_tileleft = themes_path .. "default/layouts/tileleftw.png"
theme.layout_tile = themes_path .. "default/layouts/tilew.png"
theme.layout_tiletop = themes_path .. "default/layouts/tiletopw.png"
theme.layout_spiral = themes_path .. "default/layouts/spiralw.png"
theme.layout_dwindle = themes_path .. "default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path .. "default/layouts/cornernww.png"
theme.layout_cornerne = themes_path .. "default/layouts/cornernew.png"
theme.layout_cornersw = themes_path .. "default/layouts/cornersww.png"
theme.layout_cornerse = themes_path .. "default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height,
                                               theme.bg_focus, theme.fg_focus)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
