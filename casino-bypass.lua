g_lua.register()

notify = g_gui.add_toast
submenu = g_gui.add_submenu
button = g_gui.add_button
log = g_logger.log_info
input = g_gui.add_input_int
toggle = g_gui.add_toggle


function STAT_SET_INT(hash, val)
    STATS.STAT_SET_INT(g_util.joaat("MP0_" .. hash), val, true)
    STATS.STAT_SET_INT(g_util.joaat("MP1_" .. hash), val, true)
end

function STAT_SET_INT_MPPLY(hash, val)
    STATS.STAT_SET_INT(g_util.joaat("MPPLY_" .. hash), val, true)
end

function reset()
    STAT_SET_INT_MPPLY("CASINO_CHIPS_PUR_GD", 0) ---[[chips the player has purchased]]---
    STAT_SET_INT_MPPLY("CASINO_CHIPS_WON_GD", 0) ---[[chips the player has won by betting]]---
    STAT_SET_INT_MPPLY("CASINO_CHIPS_PURTIM", 0) ---[[chips purchase time]]---
end


function welcome()
    notify("[Casino Lua] Recovery->Casino Bypass")
    notify("[Casino Lua] Welcome to Casino by anditv21.")
    notify("[Casino Lua] Scuccessfully loaded.") 

    log("[Casino Lua] Successfully loaded.")
end

welcome()
submenu("Lua Options", "Casino Lua")
submenu("Recovery", "Casino Lua")

toggle("Casino Lua", "Bypass chip limit", false, "Removes the time restriction for purchasing/winning casino chips.", function(on)
    loop = on
    while loop do
		SYSTEM.WAIT(1000)
        reset()
	end
end)

button(
    "Casino Lua",
    "Remove visitor-bonus Cooldown (AT OWN RISK!)", 
    function()
    STAT_SET_INT_MPPLY("CHIPS_COL_TIME", 0) ---[[time player claimed visitor bonus]]---
    notify("[Casino Lua] Please find a new session")
end)


button(
    "Casino Lua",
    "Remove LuckyWheel Cooldown (AT OWN RISK!)", 
    function()
    STAT_SET_INT("LUCKY_WHEEL_NUM_SPIN", 0)
    SCRIPT.SET_GLOBAL_I(262145 + 27196, 1) 
    SCRIPT.SET_GLOBAL_I(262145 + 27197, 1) 
    notify("[Casino Lua] Spin the Wheel Again")
end)



input(
    "Casino Lua",
    "Select Price",
    0,
    1,
    7,
    function(Swaad)
    if (Swaad == 1) then
        Fish = 11
        notify("[Casino Lua] Mystery Prize")
    elseif (Swaad == 2) then
        Fish = 16
        notify("[Casino Lua] Clothing")
    elseif (Swaad == 3) then
        Fish = 4
        notify("[Casino Lua] 10% Vehicle Discount")
    elseif (Swaad == 4) then
        Fish = 17
        notify("[Casino Lua] RP")
    elseif (Swaad == 5) then
        Fish = 15
        notify("[Casino Lua] Chips")
    elseif (Swaad == 6) then
        Fish = 19
        notify("[Casino Lua] Cash")
    elseif (Swaad == 7) then
        Fish = 18
        notify("[Casino Lua] Podium Vehicle")   
    end
    SCRIPT.SET_LOCAL_I(g_util.joaat("casino_lucky_wheel"), 275 + 14, Fish) 
end)

button(
    "Casino Lua",
    "Get Selected Price instant (AT OWN RISK!)", 
    function()
    SCRIPT.SET_LOCAL_I(g_util.joaat("casino_lucky_wheel"), 275 + 45, 11)
    notify("[Casino Lua] You Won The Price")
end)

button(
    "Casino Lua",
    "Unload Casino Lua",
    function()
        unload = true
    end
)

while true do
    if unload then
        notify("[Casino Lua] Unloading...")
        log("[Casino Lua] Unloading...")
        SYSTEM.WAIT(3000)
        g_lua.unregister()
        unload = false
    end
    g_util.yield()
end