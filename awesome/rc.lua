-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")
-- local naughty = require("naughty")

-- Standard awesome library
-- local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
-- local wibox = require("wibox")
-- Theme handling library
-- Notification library
local menubar = require("menubar")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
RC = {}
require("awful.hotkeys_popup.keys")

-- Libraries from config folder
require("main.error-handling")
require("main.user-variables")

-- local t = awful.screen.focused().selected_tag.name
-- naughty.notify({ title = "Achtung!", text = t, timeout = 10 })

RC.vars = require("main.user-variables")
modkey = RC.vars.modkey
terminal = RC.vars.terminal

local main = {
    layouts = require("main.layouts"),
    tags    = require("main.tags"),
    menu    = require("main.menu"),
    rules   = require("main.rules")
}

local binding = {
    globalbuttons = require("bindings.globalbuttons"),
    clientbuttons = require("bindings.clientbuttons"),
    globalkeys    = require("bindings.globalkeys"),
    bindtotags    = require("bindings.bindtotags"),
    clientkeys    = require("bindings.clientkeys")
}

--Layouts
RC.layouts = main.layouts()

-- Tags
RC.tags = main.tags()

    --{image = beautiful.awesome_icon, menu = RC.mainmenu }

RC.mainmenu = awful.menu({items = main.menu()})
RC.launcher = awful.widget.launcher(
    {image = "/home/robel/.config/awesome/images/724557.png", menu = RC.mainmenu }
)
menubar.utils.terminal = RC.vars.terminal

--{{{
RC.globalkeys = binding.globalkeys()
RC.globalkeys = binding.bindtotags(RC.globalkeys)
--}}}

root.buttons(binding.globalbuttons())
root.keys(RC.globalkeys)

awful.rules.rules = main.rules(
    binding.clientkeys(),
    binding.clientbuttons()
)

require("main.signals")

-- Wibar
require("deco.statusbar")

awful.spawn.with_shell("pgrep -x mpd > /dev/null || mpd")
awful.spawn.with_shell("pgrep -x mpDris2> /dev/null || mpDris2")
awful.spawn.with_shell("picom --experimental-backends")
awful.spawn.with_shell("feh --randomize --bg-fill $HOME/.config/wallpaper/*")
awful.spawn.with_shell("ibus-daemon -drxR")
awful.spawn.with_shell("udiskie")
awful.spawn.with_shell("pgrep -x sxhkd > /dev/null || sxhkd")
awful.spawn.with_shell("pgrep -x emacs >>/dev/null || emacs --daemon")
