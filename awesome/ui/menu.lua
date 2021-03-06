--
-- Created by IntelliJ IDEA.
-- User: LOGICIFY\corvis
-- Date: 1/11/14
-- Time: 4:32 AM
-- To change this template use File | Settings | File Templates.
--

menubar = require("menubar")

-- {{{ Menu
-- Create a laucher widget and a main menu
mainmenu = awful.menu({
    items = {
        { "exit", "oblogout", beautiful.awesome_icon },
        { "awesome", {
            { "manual", terminal .. " -e man awesome" },
            { "edit config", editor_cmd .. " " .. awesome.conffile },
            { "restart", awesome.restart }
        }, },
        { "open terminal", terminal }
    }
})

launcher = awful.widget.launcher({
    image = beautiful.awesome_icon,
    menu = mainmenu
})


-- End of menubar configuration
menubar.cache_entries = true
menubar.app_folders = { "/usr/share/applications/" }
menubar.show_categories = true   -- Change to false if you want only programs to appear in the menu
-- }}}