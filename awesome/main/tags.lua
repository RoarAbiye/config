local awful = require("awful")
-- local wibox = require("wibox")
-- local gears = require("gears")

local _M = {}

function _M.get ()
   local tags = {}
   -- local tagpairs = {
   --   names = {
   --       "1",
   -- --      "",
   -- --      "photo-video",
   -- --      "" ,
   -- --      "mail-bulk",
   -- --      "headphones-alt",
   -- --      "mug-hot"
   --  },
   --   layout = {
   --     RC.layouts[2], RC.layouts[6], RC.layouts[4],
   --     RC.layouts[5], RC.layouts[6], RC.layouts[12],
   --     RC.layouts[9], RC.layouts[3], RC.layouts[7]
   -- }
-- }

    -- awful.screen.connect_for_each_screen(function(s)
        -- tags[s] = awful.tag(tagpairs.names, s, tagpairs.layout)
     -- end)

    return tags
end

awful.tag.add( "1", {
    name = "❶",
    -- icon = "/home/robel/.config/awesome/main/tagicons/globe-solid.svg",
    index = 1,
    layout             = awful.layout.suit.tile,
    -- master_fill_policy = "master_width_factor",
    gap_single_client  = true,
    screen             = s,
    selected           = true,
})

awful.tag.add("2", {
    name = "❷",
    -- icon = "/home/robel/.config/awesome/main/tagicons/terminal-solid.svg",
    master_fill_policy = "master_width_factor",
    index = 2,
    layout = awful.layout.suit.tile,
    screen = s,
})
awful.tag.add("3", {
    name = "❸",
    -- icon = "/home/robel/.config/awesome/main/tagicons/folder-solid.svg",
    layout = awful.layout.suit.max,
    screen = s,
})
awful.tag.add("4", {
    name = "❹",
    layout = awful.layout.suit.max,
    screen = s,
})
awful.tag.add("5", {
    name = "❺",
    layout = awful.layout.suit.max,
    screen = s,
})
awful.tag.add("6", {
    name = "❻",
    layout = awful.layout.suit.max,
    screen = s,
})
awful.tag.add("7", {
    name = "❼",
    master_fill_policy = "master_width_factor",
    layout = awful.layout.suit.tile,
    screen = s,
})
awful.tag.add("8", {
    name = "❽",
    master_fill_policy = "master_width_factor",
    index = 8,
    layout = awful.layout.suit.tile,
    screen = s,
})
awful.tag.add("9", {
    name = "❾",
    layout = awful.layout.suit.max,
    screen = s,
})
return setmetatable({}, {__call = function(_, ...) return _M.get(...) end })
    -- names = {
    --     "❶ WWW",
    --     "❷ TRM",
    --     "❸ EDT",
    --     "❹ FLE",
    --     "❺ VIW",
    --     "❻ IMG" ,
    --     "❼ CHT",
    --     "❽ MSC",
    --     "❾ STF"
    -- },
