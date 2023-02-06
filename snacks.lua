g_lua.register()

notify = g_gui.add_toast
submenu = g_gui.add_submenu
button = g_gui.add_button
log = g_logger.log_info
toggle = g_gui.add_toggle

function STAT_SET_INT(hash, val)
    STATS.STAT_SET_INT(g_util.joaat("MP0_" .. hash), val, true)
    STATS.STAT_SET_INT(g_util.joaat("MP1_" .. hash), val, true)
end

function addsnacks()
    STAT_SET_INT("NO_BOUGHT_YUM_SNACKS", 30)
    STAT_SET_INT("NO_BOUGHT_HEALTH_SNACKS", 15)
    STAT_SET_INT("NO_BOUGHT_EPIC_SNACKS", 5)
    STAT_SET_INT("NUMBER_OF_ORANGE_BOUGHT", 10)
    STAT_SET_INT("NUMBER_OF_BOURGE_BOUGHT", 10)
    STAT_SET_INT("CIGARETTES_BOUGHT", 20)
    STAT_SET_INT("CHAR_ARMOUR_5_COUNT", 10)
end
function removesnacks()
    STAT_SET_INT("NO_BOUGHT_YUM_SNACKS", 0)
    STAT_SET_INT("NO_BOUGHT_HEALTH_SNACKS", 0)
    STAT_SET_INT("NO_BOUGHT_EPIC_SNACKS", 0)
    STAT_SET_INT("NUMBER_OF_ORANGE_BOUGHT", 0)
    STAT_SET_INT("NUMBER_OF_BOURGE_BOUGHT", 0)
    STAT_SET_INT("CIGARETTES_BOUGHT", 0)
    STAT_SET_INT("CHAR_ARMOUR_5_COUNT", 0)
end

local id = PLAYER.PLAYER_ID()
local name = PLAYER.GET_PLAYER_NAME(id)
notify(name .. ", Welcome to Snacks :)", 8000)
notify("[Snacks Lua] Scripting->Lua Scripts->Snacks")
log("[Snacks Lua] Successfully loaded.")

submenu("Lua Options", "Snacks")
submenu("Recovery", "Snacks")
toggle(
    "Snacks",
    "Snack loop",
    false,
    "This will give you full snacks every second",
    function(on)
        loop = on
        while loop do
            SYSTEM.WAIT(1000)
            addsnacks()
        end
    end
)
toggle(
    "Snacks",
    "Remove Snack loop",
    false,
    "This will remove your snacks every second",
    function(on)
        loop = on
        while loop do
            SYSTEM.WAIT(1000)
            removesnacks()
        end
    end
)

button(
    "Snacks",
    "Give all snacks",
    function()
        addsnacks()
        notify("[Snacks Lua] Added all snacks")
        log("[Snacks Lua] Added all snacks.")
    end
)
button(
    "Snacks",
    "Remove all snacks",
    function()
        removesnacks()
        notify("[Snacks Lua] Removed all snacks")
        log("[Snacks Lua] Removed all snacks.")
    end
)

button(
    "Snacks",
    "Unload Snack Lua",
    function()
        unload = true
    end
)

while true do
    if unload then
        SYSTEM.WAIT(3000)
        g_lua.unregister()
        unload = false
    end
    g_util.yield()
end
