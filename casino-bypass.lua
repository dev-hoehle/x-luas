g_lua.register()

notify = g_gui.add_toast
submenu = g_gui.add_submenu
button = g_gui.add_button
log = g_logger.log_info
toggle = g_gui.add_toggle

function STAT_SET_INT_MPPLY(hash, val)
    STATS.STAT_SET_INT(g_util.joaat("MPPLY_" .. hash), val, true)
end

function reset()
    STAT_SET_INT_MPPLY("CASINO_CHIPS_PUR_GD", 0) ---[[chips the player has purchased]]---
    STAT_SET_INT_MPPLY("CASINO_CHIPS_WON_GD", 0) ---[[chips the player has won by betting]]---
    STAT_SET_INT_MPPLY("CASINO_CHIPS_PURTIM", 0) ---[[chips purchase time]]---
end

function welcome()
    notify("[Casino Bypass Lua] Recovery->Casino Bypass")
    notify("[Casino Bypass Lua] Welcome to Casino Bypass by anditv21.")
    notify("[Casino Bypass Lua] Scuccessfully loaded.") 

    log("[Casino Bypass Lua] Successfully loaded.")
end

welcome()
submenu("Lua Options", "Casino Bypass")
submenu("Recovery", "Casino Bypass")

toggle("Casino Bypass", "Bypass purchase limit", false, "Removes the time restriction for purchasing casino chips.", function(on)
    loop = on
    while loop do
		SYSTEM.WAIT(1000)
        reset()
	end
end)

button(
    "Casino Bypass",
    "Remove visitor-bonus Cooldown (AT OWN RISK!)", 
    function()
    STAT_SET_INT_MPPLY("CHIPS_COL_TIME", 0) ---[[time player claimed visitor bonus]]---
    notify("[Casino Bypass Lua] Please find a new session")
end)

button(
    "Casino Bypass",
    "Unload Casino Bypass Lua",
    function()
        unload = true
    end
)

while true do
    if unload then
        notify("[Casino Bypass Lua] Unloading...")
        log("[Casino Bypass Lua] Unloading...")
        SYSTEM.WAIT(3000)
        g_lua.unregister()
        unload = false
    end
    g_util.yield()
end
