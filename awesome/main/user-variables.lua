local gears = require("gears")
local beautiful = require("beautiful")
local theme = require("themes.mytheme.theme")
-- Notification library

local _M = {
-- {{{ Variable definitions
-- Themes define colours, icons, font and wallpapers.
beautiful.init(theme),

-- This is used later as the default terminal and editor to run.
terminal = "alacritty",

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"
}

return _M
