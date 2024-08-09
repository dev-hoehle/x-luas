--[[
          dad_menu_proto lua is in HONOUR of the old dad_menu
   |-----------------------------------------------------------------|      
   |            Use DadMenuProTo At Own RISK !!!!                    |
   |           its not my fault if you get banned!                   |
   |-----------------------------------------------------------------|
]]--

g_lua.register()

notify = g_gui.add_toast
submenu = g_gui.add_submenu
button = g_gui.add_button
input = g_gui.add_input_int
toggle = g_gui.add_toggle

NETWORK = NETWORK.IS_SESSION_STARTED()

function STAT_SET_BOOL(hash, val)
    STATS.STAT_SET_BOOL(g_util.joaat("MP0_" .. hash), val, true)
    STATS.STAT_SET_BOOL(g_util.joaat("MP1_" .. hash), val, true)
end

function STAT_SET_INT(hash, val)
    STATS.STAT_SET_INT(g_util.joaat("MP0_" .. hash), val, true)
    STATS.STAT_SET_INT(g_util.joaat("MP1_" .. hash), val, true)
end

function SET_PACKED_STAT_BOOL(stat, val)
    slot = STATS.STAT_GET_INT(g_util.joaat("MPPLY_LAST_MP_CHAR"))
    STATS.SET_PACKED_STAT_BOOL(stat, val, slot)
end

local HS = "fm_mission_controller_2020"
local HSCF = 24880      
local HSCG = 30939+3  
local STRKM52 = 29700
local swad = PLAYER.PLAYER_ID()
local fish = PLAYER.GET_PLAYER_NAME(swad)
notify("Dad Menu Landed in Lua Options")
notify(fish ..", Welcome :) Use Dad Menu at own RISK!!")       

submenu("Lua Options", "Dad Menu")
submenu("Dad Menu", "Apartment Heist")
submenu("Dad Menu", "Crate Cargo")
submenu("Crate Cargo", "Ceo Headquarters")
submenu("Dad Menu", "Cayo Force")
submenu("Cayo Force", "Main Targets")
submenu("Cayo Force", "Secondary Targets")
submenu("Cayo Force", "Gather Intel Targets")
submenu("Dad Menu", "Diamond Casino Heist")
submenu("Dad Menu", "Casino Recovery")
submenu("Dad Menu", "Others")
submenu("Others", "Unlock")
submenu("Others", "Instant")
submenu("Others", "ULP")
submenu("Dad Menu", "Tutorials")

-- Apartment Heist

button(
    "Apartment Heist",
    "Complete All Setup", 
    function()
    STAT_SET_INT("HEIST_PLANNING_STAGE", -1)
    notify("You may need to choose a new Heist and then complete the first setup for it to activate")
end)

button(
    "Apartment Heist",
    "Your Payout Info",
    function()
    notify("WARNING Dont use more then 2 times a 24 Hours !!", 8000)
    notify("Will be applied only to you and you have to be the HOST !!")    
end)

input(
    "Apartment Heist",
    "Your Payout !!",
    0,
    1,
    5,
    function(WdF)
    if (WdF == 1) then
        Ish = 500
        notify("Minimum")
    elseif (WdF == 2) then
        Ish = 1000
        notify("Normal")
    elseif (WdF == 3) then
        Ish = 10000
        notify("Easy Mode 11 Mil")
    elseif (WdF == 4) then
        Ish = 5500
        notify("Normal Mode 12 Mil")
    elseif (WdF == 5) then
        Ish = 5000
        notify("Hard Mode 12.5 Mil")  
    end
	if SCRIPT.GET_GLOBAL_I(1930926 + 3008 + 1) then
        SCRIPT.SET_GLOBAL_I(1930926 + 3008 + 1, Ish)             
    end 
end)

button(
    "Apartment Heist",
    "Skip The Hacking Process",
    function()
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller"), 11778 + 24, 7)
    notify("Skipped Hack")
end)

button(
    "Apartment Heist",
    "Skip Drilling",
    function()
    SCRIPT.SET_LOCAL_F(g_util.joaat("fm_mission_controller"), 10069 + 11, 100)
    notify("Skipped Drill")
end)

button(
    "Apartment Heist",
    "Unlock Heist Awards",
    function()
    STAT_SET_INT("AWD_FINISH_HEISTS", 900)
    STAT_SET_INT("MPPLY_WIN_GOLD_MEDAL_HEISTS", 900)
    STAT_SET_INT("AWD_DO_HEIST_AS_MEMBER", 900)
    STAT_SET_INT("AWD_DO_HEIST_AS_THE_LEADER", 900)
    STAT_SET_INT("AWD_FINISH_HEIST_SETUP_JOB", 900)
    STAT_SET_INT("AWD_FINISH_HEIST", 900)
    STAT_SET_INT("HEIST_COMPLETION", 900)
    STAT_SET_INT("HEISTS_ORGANISED", 900)
    STAT_SET_INT("AWD_CONTROL_CROWDS", 900)
    STAT_SET_INT("AWD_WIN_GOLD_MEDAL_HEISTS", 900)
    STAT_SET_INT("AWD_COMPLETE_HEIST_NOT_DIE", 900)
    STAT_SET_INT("HEIST_START", 900)
    STAT_SET_INT("HEIST_END", 900)
    STAT_SET_INT("CUTSCENE_MID_PRISON", 900)
    STAT_SET_INT("CUTSCENE_MID_HUMANE", 900)
    STAT_SET_INT("CUTSCENE_MID_NARC", 900)
    STAT_SET_INT("CUTSCENE_MID_ORNATE", 900)
    STAT_SET_INT("CR_FLEECA_PREP_1", 5000)
    STAT_SET_INT("CR_FLEECA_PREP_2", 5000)
    STAT_SET_INT("CR_FLEECA_FINALE", 5000)
    STAT_SET_INT("CR_PRISON_PLANE", 5000)
    STAT_SET_INT("CR_PRISON_BUS", 5000)
    STAT_SET_INT("CR_PRISON_STATION", 5000)
    STAT_SET_INT("CR_PRISON_UNFINISHED_BIZ", 5000)
    STAT_SET_INT("CR_PRISON_FINALE", 5000)
    STAT_SET_INT("CR_HUMANE_KEY_CODES", 5000)
    STAT_SET_INT("CR_HUMANE_ARMORDILLOS", 5000)
    STAT_SET_INT("CR_HUMANE_EMP", 5000)
    STAT_SET_INT("CR_HUMANE_VALKYRIE", 5000)
    STAT_SET_INT("CR_HUMANE_FINALE", 5000)
    STAT_SET_INT("CR_NARC_COKE", 5000)
    STAT_SET_INT("CR_NARC_TRASH_TRUCK", 5000)
    STAT_SET_INT("CR_NARC_BIKERS", 5000)
    STAT_SET_INT("CR_NARC_WEED", 5000)
    STAT_SET_INT("CR_NARC_STEAL_METH", 5000)
    STAT_SET_INT("CR_NARC_FINALE", 5000)
    STAT_SET_INT("CR_PACIFIC_TRUCKS", 5000)
    STAT_SET_INT("CR_PACIFIC_WITSEC", 5000)
    STAT_SET_INT("CR_PACIFIC_HACK", 5000)
    STAT_SET_INT("CR_PACIFIC_BIKES", 5000)
    STAT_SET_INT("CR_PACIFIC_CONVOY", 5000)
    STAT_SET_INT("CR_PACIFIC_FINALE", 5000)
    STAT_SET_INT("MPPLY_HEIST_ACH_TRACKER", -1)
    STAT_SET_BOOL("MPPLY_AWD_COMPLET_HEIST_MEM", true)
    STAT_SET_BOOL("MPPLY_AWD_COMPLET_HEIST_1STPER", true)
    STAT_SET_BOOL("MPPLY_AWD_FLEECA_FIN", true)
    STAT_SET_BOOL("MPPLY_AWD_HST_ORDER", true)
    STAT_SET_BOOL("MPPLY_AWD_HST_SAME_TEAM", true)
    STAT_SET_BOOL("MPPLY_AWD_HST_ULT_CHAL", true)
    STAT_SET_BOOL("MPPLY_AWD_HUMANE_FIN", true)
    STAT_SET_BOOL("MPPLY_AWD_PACIFIC_FIN", true)
    STAT_SET_BOOL("MPPLY_AWD_PRISON_FIN", true)
    STAT_SET_BOOL("MPPLY_AWD_SERIESA_FIN", true)
    STAT_SET_BOOL("AWD_FINISH_HEIST_NO_DAMAGE", true)
    STAT_SET_BOOL("AWD_SPLIT_HEIST_TAKE_EVENLY", true)
    STAT_SET_BOOL("AWD_ALL_ROLES_HEIST", true)
    STAT_SET_BOOL("AWD_MATCHING_OUTFIT_HEIST", true)
    STAT_SET_BOOL("HEIST_PLANNING_DONE_PRINT", true)
    STAT_SET_BOOL("HEIST_PLANNING_DONE_HELP_0", true)
    STAT_SET_BOOL("HEIST_PLANNING_DONE_HELP_1", true)
    STAT_SET_BOOL("HEIST_PRE_PLAN_DONE_HELP_0", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_FINALE", true)
    STAT_SET_BOOL("HEIST_IS_TUTORIAL", false)
    STAT_SET_BOOL("HEIST_STRAND_INTRO_DONE", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_ORNATE", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_PRISON", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_BIOLAB", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_NARCOTIC", true)
    STAT_SET_BOOL("HEIST_CUTS_DONE_TUTORIAL", true)
    STAT_SET_BOOL("HEIST_AWARD_DONE_PREP", true)
    STAT_SET_BOOL("HEIST_AWARD_BOUGHT_IN", true)    
    notify("Unlocked !!")
end)

-- Crate Cargo

button(
    "Crate Cargo",
    "Set Sell price to Max (Crates)",
    function()
    SCRIPT.SET_GLOBAL_I(277877, 5000000)  -- 1 crate 
    SCRIPT.SET_GLOBAL_I(277878, 2500000)    
    notify("WARNING Dont use more then 2 times a 24 Hours !!", 8000)
    notify("Use Solo or Invite Only")
    notify("Also use Small WareHouse And dont use on first Sale ;)")
end)

button(
    "Crate Cargo",
    "Instant Sell (Finish Crate Mission)",
    function()
    if SCRIPT.GET_LOCAL_I(g_util.joaat("gb_contraband_sell"), 546) >= 0 then --542
        SCRIPT.SET_LOCAL_I(g_util.joaat("gb_contraband_sell"), 552, 7)    --+2   
        SCRIPT.SET_LOCAL_I(g_util.joaat("gb_contraband_sell"), 546, 99999)
    end
    notify("Sold Cargo")
end)

button(
    "Crate Cargo",
    "Instant Buy Crates",
    function()
	if SCRIPT.GET_LOCAL_I(g_util.joaat("gb_contraband_buy"), 795) == 0 then  
        SCRIPT.SET_LOCAL_I(g_util.joaat("gb_contraband_buy"), 603 + 5, 1)    
        SCRIPT.SET_LOCAL_I(g_util.joaat("gb_contraband_buy"), 795, 4)           
    end
    notify("New Cargo Arrived !! if not change SESSION and try again")
end)

button(
    "Crate Cargo",
    "Buy and Sell COOLDOWN",
    function()
    SCRIPT.SET_GLOBAL_I(277644, 0)  
    SCRIPT.SET_GLOBAL_I(277645, 0)  
    notify("Resetted")
end)

button(
    "Crate Cargo",
    "Set Normal Cargo Stats",
    function()
    STAT_SET_INT("LIFETIME_BUY_COMPLETE", 700)
    STAT_SET_INT("LIFETIME_BUY_UNDERTAKEN", 783)
    STAT_SET_INT("LIFETIME_SELL_COMPLETE", 783)
    STAT_SET_INT("LIFETIME_SELL_UNDERTAKEN", 783)
    STAT_SET_INT("LIFETIME_CONTRA_EARNINGS", 15660070)
    notify("Cargo Stats bin set Normal")
end)

input(
    "Crate Cargo", 
    "Select Special Cargo", 
    0, 
    1,
    6,
    function(Swdfsh)
    if (Swdfsh == 1) then        
        SCRIPT.SET_GLOBAL_I(1943379, 1) 
        SCRIPT.SET_GLOBAL_I(1943225, 2) 
        notify("Ornamental Egg")
    elseif (Swdfsh == 2) then
        SCRIPT.SET_GLOBAL_I(1943379, 1) 
        SCRIPT.SET_GLOBAL_I(1943225, 4) 
        notify("Gold Minigun")
    elseif (Swdfsh == 3) then
        SCRIPT.SET_GLOBAL_I(1943379, 1)
        SCRIPT.SET_GLOBAL_I(1943225, 6)
        notify("Large Diamond")
    elseif (Swdfsh == 4) then
        SCRIPT.SET_GLOBAL_I(1943379, 1)
        SCRIPT.SET_GLOBAL_I(1943225, 7)
        notify("Rage Hide")
    elseif (Swdfsh == 5) then
        SCRIPT.SET_GLOBAL_I(1943379, 1)
        SCRIPT.SET_GLOBAL_I(1943225, 8)
        notify("Film Reel")
    elseif (Swdfsh == 6) then    
        SCRIPT.SET_GLOBAL_I(1943379, 1)
        SCRIPT.SET_GLOBAL_I(1943225, 9)
        notify("Rare Pocket Watch")
    end
end)

button(
    "Ceo Headquarters",
    "<Arcadius Business Center>",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, -146.916, -583.566, 32.424)
    end
)
 
button(
    "Ceo Headquarters",
    "<Lombank West>",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, -1585.232, -553.261, 35.033)
    end
)

button(
    "Ceo Headquarters",
    "<Maze Bank Tower>",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, -69.391, -785.207, 44.227)
    end
)

button(
    "Ceo Headquarters",
    "<Maze Bank West>",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, -1380.378, -504.890, 33.157)
    end
)

-- Cayo Force

--Main Targets

button( 
    "Main Targets",
    "Drainage Tunnel",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 5044.23, -5814.43, -10.29)
    end
)

button(
    "Main Targets",
    "(Drainage Pipe Cutting Tool)",
    function()
    if SCRIPT.GET_LOCAL_I(g_util.joaat(HS), STRKM52) == 4 then
        SCRIPT.SET_LOCAL_I(g_util.joaat(HS), STRKM52, 6)
    end
    notify("Skipped Drainage Tunnel")
end)

button( 
    "Main Targets",
    "GrapplingHook Entrance",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 5034.81, -5683.55, 19.58)
    end
)

button(
    "Main Targets",
    "Office",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 5010.21, -5753.52, 28.55)
    end
)

button(
    "Main Targets",
    "(Clone Fingerprint Tool)",
    function()
    if SCRIPT.GET_LOCAL_I(g_util.joaat(HS), HSCF) == 4 then
        SCRIPT.SET_LOCAL_I(g_util.joaat(HS), HSCF, 5)
    end
    notify("Fingerprints Hacked")
end)

button(
    "Main Targets",
    "Vault Gate",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 5009.16, -5753.72, 15.48)
    end
)

button(
    "Main Targets",
    "(Quick Cut Glass Tool)",
    "Click one time PageUp, before Activate and Continue Cutting",
    function()
    local CtPrg = SCRIPT.GET_LOCAL_F(g_util.joaat(HS), HSCG)
    if CtPrg then
        if CtPrg > 0.0 and CtPrg < 99.9 then
            SCRIPT.SET_LOCAL_F(g_util.joaat(HS), HSCG, 99.9)
        end
    end
end)

button( 
    "Main Targets",
    "North Safe Point",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4961.06, -5791.29, 24.97)
    end
)

button(
    "Main Targets",
    "GrapplingHook Escape",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4996.05, -5806.43, 19.58)
    end
)

button(
    "Main Targets",
    "Exit Gate (Main Targets Done !)",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4990.10, -5720.88, 19.59)
    end
)

--Secondary Targets

button(
    "Secondary Targets",
    "Storage Room #01 (2 persons)",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 5080.93, -5756.11, 16.53)
    end
)

button(
    "Secondary Targets",
    "Storage Room #02 (2 persons)",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 5028.80, -5735.58, 17.57)
    end
)

button( 
    "Secondary Targets",
    "Storage Room #03 (2 persons)",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 5008.02, -5787.35, 16.83)
    end
)

button( 
    "Secondary Targets",
    "Airport Loot #01",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4504.12, -4555.05, 4.47)
    end
)

button( 
    "Secondary Targets",
    "Airport Loot #02",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4437.78, -4447.76, 4.43)
    end
)

button( 
    "Secondary Targets",
    "Main Dock Loot #01",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4924.39, -5243.34, 2.23)
    end
)

button( 
    "Secondary Targets",
    "Main Dock Loot #02",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4999.09, -5165.24, 2.47)
    end
)

button( 
    "Secondary Targets",
    "Finish With Kosatka (DONE)",	   
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4295.40, -3862.34, -55.66)
    end
)

--Gather Intel Targets

button(
    "Gather Intel Targets",
    "Dock Colombia (Main)", 
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4947.50, -5168.46, 2.24)
    end
)

button(
    "Gather Intel Targets",
    "Power Station", 
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4477.11, -4597.30, 5.29)
    end
)

button(
    "Gather Intel Targets",
    "Tower Station", 
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4373.48, -4579.73, 3.91)
    end
)

button(
    "Gather Intel Targets",
    "Communication Tower",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 5266.02, -5427.74, 64.30)
    end
)

button(
    "Gather Intel Targets",
    "Return To Los Santos",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 4493.16, -4467.20, 4.22)
    end
)  

input(
    "Cayo Force",
    "Choose Main Target",
    0,
    1,
    6,
    function(Swaad)
    if (Swaad == 1) then
        Fish = 5
        notify("Panther Statue")
    elseif (Swaad == 2) then
        Fish = 4
        notify("Madrazo Files")
    elseif (Swaad == 3) then
        Fish = 3
        notify("Pink Diamond")
    elseif (Swaad == 4) then
        Fish = 2
        notify("Bearer Bonds")
    elseif (Swaad == 5) then
        Fish = 1
        notify("Ruby Necklace")
    elseif (Swaad == 6) then
        Fish = 0
        notify("Sinsimito Tequila")   
    end
    STAT_SET_INT("H4CNF_TARGET", Fish)
    STAT_SET_INT("H4CNF_BOLTCUT", -1)
    STAT_SET_INT("H4CNF_UNIFORM", -1)
    STAT_SET_INT("H4CNF_GRAPPEL", -1)
    STAT_SET_INT("H4_MISSIONS", -1)
    STAT_SET_INT("H4CNF_WEAPONS", 1)
    STAT_SET_INT("H4CNF_TROJAN", 5)
    STAT_SET_INT("H4_PLAYTHROUGH_STATUS", 100)
    STAT_SET_INT("H4LOOT_CASH_I", 5551206)
    STAT_SET_INT("H4LOOT_CASH_I_SCOPED", 5551206)
    STAT_SET_INT("H4LOOT_CASH_C", 0)
    STAT_SET_INT("H4LOOT_CASH_C_SCOPED", 0)
    STAT_SET_INT("H4LOOT_COKE_I", 4884838)
    STAT_SET_INT("H4LOOT_COKE_I_SCOPED", 4884838)
    STAT_SET_INT("H4LOOT_COKE_C", 0)
    STAT_SET_INT("H4LOOT_COKE_C_SCOPED", 0)
    STAT_SET_INT("H4LOOT_GOLD_I", 0)
    STAT_SET_INT("H4LOOT_GOLD_I_SCOPED", 0)
    STAT_SET_INT("H4LOOT_GOLD_C", 192)
    STAT_SET_INT("H4LOOT_GOLD_C_SCOPED", 192)
    STAT_SET_INT("H4LOOT_WEED_I", 0)
    STAT_SET_INT("H4LOOT_WEED_I_SCOPED", 0)
    STAT_SET_INT("H4LOOT_WEED_C", 0)
    STAT_SET_INT("H4LOOT_WEED_C_SCOPED", 0)
    STAT_SET_INT("H4LOOT_PAINT", 120)
    STAT_SET_INT("H4LOOT_PAINT_SCOPED", 120)
    STAT_SET_INT("H4LOOT_CASH_V", 224431)
    STAT_SET_INT("H4LOOT_COKE_V", 353863)
    STAT_SET_INT("H4LOOT_GOLD_V", 471817)
    STAT_SET_INT("H4LOOT_PAINT_V", 353863)
    STAT_SET_INT("H4LOOT_WEED_V", 0)
    STAT_SET_INT("H4_PROGRESS", 131055)
    STAT_SET_INT("H4CNF_BS_GEN", -1)
    STAT_SET_INT("H4CNF_BS_ENTR", -1)
    STAT_SET_INT("H4CNF_BS_ABIL", -1)
    STAT_SET_INT("H4CNF_WEP_DISRP", 3)
    STAT_SET_INT("H4CNF_ARM_DISRP", 3)
    STAT_SET_INT("H4CNF_HEL_DISRP", 3)
    STAT_SET_INT("H4CNF_APPROACH", -1)
    -- INT
end)
    
button(
    "Cayo Force",
    "Teleport to Kosatka (Main Sessions)",
    function()
        local ped = PLAYER.PLAYER_PED_ID()
        ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ped, 1561.27, 386.96, -49.69)
    end
)

button(
    "Cayo Force",
    "Remove Cooldown Missiles (AT OWN RISK!)", 
    function()
    SCRIPT.SET_GLOBAL_I(281557, 0) 
    SCRIPT.SET_GLOBAL_I(283279, 99999) 
    notify("Missiles Active")
end)

button(
    "Cayo Force",
    "Skip Cayo Cooldown (AT OWN RISK!)",
    function()
        if NETWORK then
            STAT_SET_INT("H4_PROGRESS", 110542)
            STAT_SET_INT("H4_COOLDOWN", 0)
            STAT_SET_INT("H4_COOLDOWN_HARD", 0)
        end
    notify("Return to Story Mode ! And go back Online to Activate !!")
    end
)

--Diamond Casino Heist

button(
    "Diamond Casino Heist",
    "Normal Silent & Sneaky Preset Gold",
    function()
        if NETWORK then
            STAT_SET_INT("H3_COMPLETEDPOSIX", -1)                         
            STAT_SET_INT("H3OPT_MASKS", 9)
            STAT_SET_INT("H3OPT_WEAPS", 1)
            STAT_SET_INT("H3OPT_VEHS", 3)
            STAT_SET_INT("CAS_HEIST_FLOW", -1)
            STAT_SET_INT("H3_LAST_APPROACH", 0)
            STAT_SET_INT("H3OPT_APPROACH", 1)
            STAT_SET_INT("H3_HARD_APPROACH", 0)
            STAT_SET_INT("H3OPT_TARGET", 1)
            STAT_SET_INT("H3OPT_POI", 1023)
            STAT_SET_INT("H3OPT_ACCESSPOINTS", 2047)
            STAT_SET_INT("H3OPT_CREWWEAP", 4)
            STAT_SET_INT("H3OPT_CREWDRIVER", 3)
            STAT_SET_INT("H3OPT_CREWHACKER", 4)
            STAT_SET_INT("H3OPT_DISRUPTSHIP", 3)
            STAT_SET_INT("H3OPT_BODYARMORLVL", -1)
            STAT_SET_INT("H3OPT_KEYLEVELS", 2)
            STAT_SET_INT("H3OPT_BITSET1", 127)
            STAT_SET_INT("H3OPT_BITSET0", 262270)
        end
    end
)

local ExecuteOnce = {
    {"H3_COMPLETEDPOSIX", -1},
    {"H3OPT_MASKS", 4},
    {"H3OPT_WEAPS", 1},
    {"H3OPT_VEHS", 3}
}

local SILENT_SNEAKY_PRESET = {
    {"CAS_HEIST_FLOW", -1},
    {"H3_LAST_APPROACH", 0},
    {"H3OPT_APPROACH", 1},
    {"H3_HARD_APPROACH", 0},
    {"H3OPT_TARGET", 3},
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047},
    {"H3OPT_CREWWEAP", 4},
    {"H3OPT_CREWDRIVER", 3},
    {"H3OPT_CREWHACKER", 4},
    {"H3OPT_DISRUPTSHIP", 3},
    {"H3OPT_BODYARMORLVL", -1},
    {"H3OPT_KEYLEVELS", 2},
    {"H3OPT_BITSET1", 127},
    {"H3OPT_BITSET0", 262270}
}


toggle(
    "Diamond Casino Heist",
    "Silent and Sneaky",
    false,
    "Method: Silent & Sneaky Target: Diamond",
    function(on)
        for i = 1, #ExecuteOnce do
            if NETWORK then
                STAT_SET_INT(ExecuteOnce[i][1], ExecuteOnce[i][2])
            -- INT
            end
        end
        silent = on
        while silent do
            SYSTEM.WAIT(100)
            if NETWORK then
                for i = 1, #SILENT_SNEAKY_PRESET do
                    STAT_SET_INT(SILENT_SNEAKY_PRESET[i][1], SILENT_SNEAKY_PRESET[i][2])
                    -- INT
                end
                SCRIPT.SET_GLOBAL_I(290475, 1410065408)
                SCRIPT.SET_GLOBAL_I(290479, 1410065408)
                SCRIPT.SET_GLOBAL_I(1967175, 60)
                SCRIPT.SET_GLOBAL_I(1967176, 147)
                SCRIPT.SET_GLOBAL_I(1967177, 147)
                SCRIPT.SET_GLOBAL_I(1967178, 147)
            -- GLOBAL
            end
        end
    end
)

local ExecuteOnce = {
    {"H3_COMPLETEDPOSIX", -1},
    {"H3OPT_MASKS", 2},
    {"H3OPT_WEAPS", 1},
    {"H3OPT_VEHS", 3}
}

local BIGCON_PRESET = {
    {"CAS_HEIST_FLOW", -1},
    {"H3_LAST_APPROACH", 0},
    {"H3OPT_APPROACH", 2},
    {"H3_HARD_APPROACH", 0},
    {"H3OPT_TARGET", 3},
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047},
    {"H3OPT_CREWWEAP", 4},
    {"H3OPT_CREWDRIVER", 3},
    {"H3OPT_CREWHACKER", 4},
    {"H3OPT_DISRUPTSHIP", 3},
    {"H3OPT_BODYARMORLVL", -1},
    {"H3OPT_KEYLEVELS", 2},
    {"H3OPT_BITSET1", 159},
    {"H3OPT_BITSET0", 524118}
}

toggle(
    "Diamond Casino Heist",
    "BigCon Approach",
    false,
    "Method: BigCon Target: Diamond",
    function(on)
        for i = 1, #ExecuteOnce do
            if NETWORK then
                STAT_SET_INT(ExecuteOnce[i][1], ExecuteOnce[i][2])
            -- INT
            end
        end
        bigcon = on
        while bigcon do
            SYSTEM.WAIT(100)
            if NETWORK then
                for i = 1, #BIGCON_PRESET do
                    STAT_SET_INT(BIGCON_PRESET[i][1], BIGCON_PRESET[i][2])
                    -- INT
                end
                SCRIPT.SET_GLOBAL_I(290475, 1410065408)
                SCRIPT.SET_GLOBAL_I(290479, 1410065408)
                SCRIPT.SET_GLOBAL_I(1967175, 60)
                SCRIPT.SET_GLOBAL_I(1967176, 147)
                SCRIPT.SET_GLOBAL_I(1967177, 147)
                SCRIPT.SET_GLOBAL_I(1967178, 147)
            -- GLOBAL
            end
        end
    end
)

local ExecuteOnce = {
    {"H3_COMPLETEDPOSIX", -1},
    {"H3OPT_MASKS", 4},
    {"H3OPT_WEAPS", 1},
    {"H3OPT_VEHS", 3}
}

local AGGRESSIVE_PRESET = {
    {"CAS_HEIST_FLOW", -1},
    {"H3_LAST_APPROACH", 0},
    {"H3OPT_APPROACH", 3},
    {"H3_HARD_APPROACH", 0},
    {"H3OPT_TARGET", 1},
    {"H3OPT_POI", 1023},
    {"H3OPT_ACCESSPOINTS", 2047},
    {"H3OPT_CREWWEAP", 4},
    {"H3OPT_CREWDRIVER", 3},
    {"H3OPT_CREWHACKER", 4},
    {"H3OPT_DISRUPTSHIP", 3},
    {"H3OPT_BODYARMORLVL", -1},
    {"H3OPT_KEYLEVELS", 2},
    {"H3OPT_BITSET1", 799},
    {"H3OPT_BITSET0", 3670102}
}

toggle(
    "Diamond Casino Heist",
    "Aggressive Approach",
    false,
    "Method: Aggressive Target: Gold",
    function(on)
        for i = 1, #ExecuteOnce do
            if NETWORK then
                STAT_SET_INT(ExecuteOnce[i][1], ExecuteOnce[i][2])
            -- INT
            end
        end
        agg = on
        while agg do
            SYSTEM.WAIT(100)
            if NETWORK then
                for i = 1, #AGGRESSIVE_PRESET do
                    STAT_SET_INT(AGGRESSIVE_PRESET[i][1], AGGRESSIVE_PRESET[i][2])
                    -- INT
                end
                SCRIPT.SET_GLOBAL_I(290474, 1410065408)
                SCRIPT.SET_GLOBAL_I(290478, 1410065408)
                SCRIPT.SET_GLOBAL_I(1967175, 60)
                SCRIPT.SET_GLOBAL_I(1967176, 147)
                SCRIPT.SET_GLOBAL_I(1967177, 147)
                SCRIPT.SET_GLOBAL_I(1967178, 147)
            -- GLOBAL
            end
        end
    end
)

button(
    "Diamond Casino Heist",
    "Reset Heist",
    function()
        if NETWORK then
            STAT_SET_INT("H3_LAST_APPROACH", 0)
            STAT_SET_INT("H3OPT_APPROACH", 0)
            STAT_SET_INT("H3_HARD_APPROACH", 0)
            STAT_SET_INT("H3OPT_TARGET", 0)
            STAT_SET_INT("H3OPT_POI", 0)
            STAT_SET_INT("H3OPT_ACCESSPOINTS", 0)
            STAT_SET_INT("H3OPT_BITSET1", 0)
            STAT_SET_INT("H3OPT_CREWWEAP", 0)
            STAT_SET_INT("H3OPT_CREWDRIVER", 0)
            STAT_SET_INT("H3OPT_CREWHACKER", 0)
            STAT_SET_INT("H3OPT_WEAPS", 0)
            STAT_SET_INT("H3OPT_VEHS", 0)
            STAT_SET_INT("H3OPT_DISRUPTSHIP", 0)
            STAT_SET_INT("H3OPT_BODYARMORLVL", 0)
            STAT_SET_INT("H3OPT_KEYLEVELS", 0)
            STAT_SET_INT("H3OPT_MASKS", 0)
            STAT_SET_INT("H3OPT_BITSET0", 0)
        end
    end
)

button(
    "Diamond Casino Heist",
    "Skip Fingerprint and Keypad Hacking Process", 
    function()
    if SCRIPT.GET_LOCAL_I(g_util.joaat("fm_mission_controller"), 53019) ~= 1 then
        SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller"), 53019, 5)
    end
    if SCRIPT.GET_LOCAL_I(g_util.joaat("fm_mission_controller"), 54085) ~= 1 then
        SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller"), 54085, 5)
    end
    notify("Skipped")
end)

button(
    "Diamond Casino Heist",
    "Skip Drilling The Vault Door", 
    function()
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller"), 10107 + 7, SCRIPT.GET_LOCAL_I(g_util.joaat("fm_mission_controller"), 10109 + 37))
    notify("Skipped")
end)

button(
    "Diamond Casino Heist",
    "Instant Finish Casino Heist (AT OWN RISK!)", 
    function()
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller"), 19746 + 1741, 80) 
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller"), 19746 + 2686, 10000000) 
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller"), 27489 + 859 + 18, 99999)
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller"), 31621 + 69, 99999) 
    notify("You Won The Heist")
end)

--Casino Recovery

input(
    "Casino Recovery",
    "Select Lucky Wheel Price",
    0,
    1,
    7,
    function(Swad)
    if (Swad == 1) then
        Fsh = 11
        notify("Mystery Prize")
    elseif (Swad == 2) then
        Fsh = 16
        notify("Clothing")
    elseif (Swad == 3) then
        Fsh = 4
        notify("10% Vehicle Discount")
    elseif (Swad == 4) then
        Fsh = 17
        notify("RP")
    elseif (Swad == 5) then
        Fsh = 15
        notify("Chips")
    elseif (Swad == 6) then
        Fsh = 19
        notify("Cash")
    elseif (Swad == 7) then
        Fsh = 18
        notify("Podium Vehicle")   
    end
    SCRIPT.SET_LOCAL_I(g_util.joaat("casino_lucky_wheel"), 280 + 14, Fsh) 
end)

button(
    "Casino Recovery",
    "Get Lucky Wheel Price (AT OWN RISK!)", 
    function()
    SCRIPT.SET_LOCAL_I(g_util.joaat("casino_lucky_wheel"), 280 + 45, 11) 
    notify("You Won The Price")
end)

--Others

button(
    "Unlock",
    "Alien Tattoo (Illuminati)",
    function()
    SET_PACKED_STAT_BOOL(15737, true) -- Male
    SET_PACKED_STAT_BOOL(15748, true) -- Female
    notify("Change your session to apply!")
end)

button(
    "Unlock",
    "Several Tattoo's",
    function()
    STAT_SET_INT("AWD_CAR_BOMBS_ENEMY_KILLS", 25) -- Trust No One
    STAT_SET_INT("AWD_HOLD_UP_SHOPS", 20) -- Clown, Clown and Gun, Clown Dual Wield & Clown Dual Wield Dollar
    STAT_SET_INT("AWD_FMBBETWIN", 50000) -- Hustler
    STAT_SET_INT("AWD_100_HEADSHOTS", 500) -- Skull
    STAT_SET_INT("AWD_FM_DM_WINS", 50) -- Burning Heart
    STAT_SET_INT("AWD_RACES_WON", 50) -- Racing Brunette
    STAT_SET_INT("AWD_FMREVENGEKILLSDM", 50) -- Dragon and Dagger
    STAT_SET_INT("AWD_FM_DM_TOTALKILLS", 500) -- Melting Skull
    STAT_SET_INT("LAP_DANCED_BOUGHT", 25) -- Hottie
    STAT_SET_INT("AWD_FM_TDM_MVP", 50) -- Grim Reaper
    STAT_SET_INT("AWD_FMKILLBOUNTY", 25) -- Skull and Sword
    STAT_SET_INT("SNIPERRFL_ENEMY_KILLS", 100) -- Broken Skull
    STAT_SET_BOOL("AWD_FMWINEVERYGAMEMODE", true) -- Angel
    STAT_SET_BOOL("AWD_FMMOSTKILLSSURVIVE", true) -- The Wages of Sin
    STAT_SET_BOOL("AWD_FMRACEWORLDRECHOLDER", true) -- Racing Blonde
    STAT_SET_BOOL("AWD_FMATTGANGHQ", true) -- Grim Reaper Smoking Gun
    STAT_SET_BOOL("AWD_FMKILL3ANDWINGTARACE", true) -- Ride or Die
    STAT_SET_BOOL("AWD_FMKILLSTREAKSDM", true) -- Flaming Skull
    STAT_SET_INT("KILLS_PLAYERS", 250) -- Blank Scroll
    STAT_SET_INT("KILLS_PLAYERS", 500) -- Embellished Scroll
    STAT_SET_INT("KILLS_PLAYERS", 1000) -- Seven Deadly Sins
    STAT_SET_BOOL("AWD_FMFULLYMODDEDCAR", true) -- Los Santos Customs
    SET_PACKED_STAT_BOOL(15887, true) -- Lucky 7s Tattoo - Male
    SET_PACKED_STAT_BOOL(15894, true) -- The Royals Tattoo - Male
    SET_PACKED_STAT_BOOL(15898, true) -- Lucky 7s Tattoo - Female
    SET_PACKED_STAT_BOOL(15905, true) -- The Royals Tattoo - Female
    notify("Unlocked!")
end)

button(
    "Unlock",
    "Hats and Shirts",
    function()
    SET_PACKED_STAT_BOOL(15408, true) -- Black Shrewsbury Cap
    SET_PACKED_STAT_BOOL(34510, true) -- Glow Believe Backwards Cap
    SET_PACKED_STAT_BOOL(34509, true) -- Black Believe Backwards Cap
    SET_PACKED_STAT_BOOL(34508, true) -- Gray Believe Backwards Cap
    SET_PACKED_STAT_BOOL(34375, true) -- Black LD Organics Forwards 
    SET_PACKED_STAT_BOOL(27087, true) -- Unicorn
    SET_PACKED_STAT_BOOL(34372, true) -- Horror Pumpkin
    SET_PACKED_STAT_BOOL(27088, true) -- Gingerbread
    SET_PACKED_STAT_BOOL(34378, true) -- Junk Energy Drink Chute Bag
    SET_PACKED_STAT_BOOL(32275, true) -- Circoloco Tee
    SET_PACKED_STAT_BOOL(32316, true) -- Marathon Hoodie
    SET_PACKED_STAT_BOOL(34507, true) -- White UFO Boxer Shorts
    SET_PACKED_STAT_BOOL(34506, true) -- Green UFO Boxer Shorts
    SET_PACKED_STAT_BOOL(89, true) -- Rockstar V Neck
    SET_PACKED_STAT_BOOL(87, true) -- Red Skull V Neck 
    SET_PACKED_STAT_BOOL(36809, true) -- All Type of 'Nemesis' Tees
    SET_PACKED_STAT_BOOL(22176, true) -- White Solomun Tee
    SET_PACKED_STAT_BOOL(22192, true) -- Tale Of Us Black Box Tee
    SET_PACKED_STAT_BOOL(16008, true) -- White Dixon Repeated Logo T
    SET_PACKED_STAT_BOOL(16009, true) -- The Black Madonna Star Tee
    SET_PACKED_STAT_BOOL(22172, true) -- Black Solomun Yellow Logo T
    SET_PACKED_STAT_BOOL(22170, true) -- Black Tale Of Us Emb. Tee
    SET_PACKED_STAT_BOOL(22162, true) -- Black Dixon Wilderness Tee
    SET_PACKED_STAT_BOOL(22150, true) -- Black The Black Madonna Emb
    SET_PACKED_STAT_BOOL(30702, true) -- Blue Keinemusik Tee
    SET_PACKED_STAT_BOOL(30701, true) -- Moodymann Tee
    SET_PACKED_STAT_BOOL(30699, true) -- Palms Trax LS Tee
    SET_PACKED_STAT_BOOL(34380, true) -- Pumpkin Tee 
    SET_PACKED_STAT_BOOL(3613, true) -- Elitas T-shirt
    SET_PACKED_STAT_BOOL(3781, true) -- Elite Lousy T-shirt
    SET_PACKED_STAT_BOOL(3780, true) -- Elite Challenge T-Shirt
    SET_PACKED_STAT_BOOL(3779, true) -- Showroom T-shirt
    SET_PACKED_STAT_BOOL(3778, true) -- Shot Caller T-shirt
    SET_PACKED_STAT_BOOL(3777, true) -- One Man Army T-shirt
    SET_PACKED_STAT_BOOL(3776, true) -- Psycho Killer T-shirt
    SET_PACKED_STAT_BOOL(3775, true) -- Decorated T-shirt
    SET_PACKED_STAT_BOOL(3774, true) -- Can't Touch This T-shirt
    SET_PACKED_STAT_BOOL(3773, true) -- Asshole T-shirt
    SET_PACKED_STAT_BOOL(3771, true) -- For Hire T-shirt
    SET_PACKED_STAT_BOOL(3770, true) -- Death Defying T-shirt
    SET_PACKED_STAT_BOOL(113, true) -- I Heart LC T-shirt
    SET_PACKED_STAT_BOOL(7551, true) -- DCTL T-Shirt
    SET_PACKED_STAT_BOOL(9374, true) -- R* Crosswalk Tee
    SET_PACKED_STAT_BOOL(9385, true) -- Crosswalk Tee
    SET_PACKED_STAT_BOOL(15402, true) -- White Ammu-Nation Tee
    SET_PACKED_STAT_BOOL(15392, true) -- Black Coil Hoodie 
    notify("Unlocked!")
end)

button(
    "Unlock",
    "Unlock All Contacts",
    function()
    STAT_SET_INT("FM_ACT_PHN", -1)
    STAT_SET_INT("FM_VEH_TX1", -1)
    STAT_SET_INT("FM_CUT_DONE", -1)
    STAT_SET_INT("FM_CUT_DONE_2", -1)
    
    for i = 2, 9 do
        STAT_SET_INT("FM_ACT_PH" .. i, -1)
    end
    notify("Say Hello 2 Your NEW Friends")
end)

input(
    "Others",
    "Remove Money or Buy Ballistic Armor 4 FUN",
    0,
    1,
    3,
    function(Andi)
    if (Andi == 1) then
        Tv21 = 10000000
        notify("10 Million")
    elseif (Andi == 2) then
        Tv21 = 500
        notify("500 Dollars")
    elseif (Andi == 3) then
        Tv21 = 1000000
        notify("1 Million")
    end
    SCRIPT.SET_GLOBAL_I(282169, Tv21)  
    SET_PACKED_STAT_BOOL(15382, true)
    SET_PACKED_STAT_BOOL(9461, true)
    SCRIPT.SET_GLOBAL_I(2710428, 85)
    notify("Now Press M key for Ballistic Armor Screen :)")
end
)

input(
    "Others",
    "Get LS Car Meet Prize Ride",
    0,
    1,
    4,
    function(Andr)
    if (Andr == 1) then
        aTv21 = 1
        notify("1 Race Progressed")
    elseif (Andr == 2) then
        aTv21 = 2
        notify("2 Races Progressed")
    elseif (Andr == 3) then
        aTv21 = 3
        notify("3 Races Progressed")
    elseif (Andr == 4) then
        aTv21 = 4
        notify("4 Races Progressed")
    end
    STAT_SET_INT("CARMEET_PV_CHLLGE_PRGRSS", aTv21)
    STAT_SET_BOOL("CARMEET_PV_CHLLGE_CMPLT", true)
    notify("Now Press M key to collect your Prize Ride :)")
end
)

button(
    "Instant",
    "Finish Cayo,Tuners,ULP and Agency (AT OWN RISK!)", 
    function()
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller_2020"), 50150, 9)
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller_2020"), 50150 + 1770 + 1, 50) 
    notify("You Won :)")
end)

button(
    "Instant",
    "Finish Bunker Sell (AT OWN RISK!)", 
    function()
    SCRIPT.SET_LOCAL_I(g_util.joaat("gb_gunrunning"), 1211 + 774, 0)
    notify("You Sold Successfull :)")
end)

button(
    "Instant",
    "Finish Air Cargo Sell (AT OWN RISK!)", 
    function()
    SCRIPT.SET_LOCAL_I(g_util.joaat("gb_smuggler"), 1934 + 1035, SCRIPT.GET_LOCAL_I(g_util.joaat("gb_smuggler"), 1934 + 1078))
    notify("You Sold Successfull :)")
end)

button(
    "Instant",
    "Finish Acid Lab Sell (AT OWN RISK!)", 
    function()
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_content_acid_lab_sell"), 5483 + 1357 + 2, 9)
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_content_acid_lab_sell"), 5483 + 1357 + 3, 10)
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_content_acid_lab_sell"), 5483 + 1293, 2)
    notify("You Sold Successfull :)")
end)

button(
    "Others",
    "Skip Nightclub Setups",
    "Skip's all of setups: Equipment, Staff, and Collect DJ",
    function()
    SET_PACKED_STAT_BOOL(18161, true) 
    SET_PACKED_STAT_BOOL(22067, true) 
    SET_PACKED_STAT_BOOL(22068, true) 
    notify("Change your session to apply!")
end)

button(
    "Others",
    "Skip Lamar Missions To The Last One",
    function()
    STAT_SET_BOOL("LOW_FLOW_CS_DRV_SEEN", true)
    STAT_SET_BOOL("LOW_FLOW_CS_TRA_SEEN", true)
    STAT_SET_BOOL("LOW_FLOW_CS_FUN_SEEN", true)
    STAT_SET_BOOL("LOW_FLOW_CS_PHO_SEEN", true)
    STAT_SET_BOOL("LOW_FLOW_CS_FIN_SEEN", true)
    STAT_SET_BOOL("LOW_BEN_INTRO_CS_SEEN", true)
    STAT_SET_INT("LOWRIDER_FLOW_COMPLETE", 3)
    STAT_SET_INT("LOW_FLOW_CURRENT_PROG", 8)
    STAT_SET_INT("LOW_FLOW_CURRENT_CALL", 8)
    notify("Change your session to apply!")
end)

button(
    "ULP",
    "Skip ULP Missions",
    function()
    STAT_SET_INT("ULP_MISSION_PROGRESS", 127)
    STAT_SET_INT("ULP_MISSION_CURRENT", 127)
    notify("Done")
end)

button(
    "ULP",
    "Skip ULP Hacking Process", 
    function()
    SCRIPT.SET_LOCAL_I(g_util.joaat("fm_mission_controller_2020"), 980 + 135, 3)
    notify("You Hacked Successfull ;)")
end)

button(
    "Others",
    "Get all Actionfigures", 
    function()
    local PlauerChar = PLAYER.PLAYER_PED_ID()
    notify("This will take some time...", 7000)
	ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 3514,3754,35)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 3799,4473,7)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 3306,5194,18)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2937,4620,48)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2725,4142,44)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2487,3759,43)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1886,3913,33)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1702,3290,48)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1390,3608,34)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1295.646,4306.300,37.317)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1714,4791,41)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2416,4994,46)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2221,5612,55)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1540,6323,24)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1310,6545,5)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 457,5573,781)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 178,6394,31)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -312,6314,32)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -689,5829,17)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -552,5330,75)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -263,4729,138)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1121,4977,186)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -2168.814,5192.917,16.601)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -2186,4250,48)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -2172,3441,31)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1649,3018,32)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1281,2550,18)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1514,1517,111)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1895,2043,142)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -2558,2316,33)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -3244,996,13)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -2959,386,14)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -3020,41,10)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -2238,249,176)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1807,427,132)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1502,813,181)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -770,877,204)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -507,393,97)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -487,-55,39)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -294,-343,10)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -180,-632,49)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -108,-857,39)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -710,-906,19)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -909,-1149,2)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1213,-960,1)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1051,-523,36)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -989,-102,40)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1024,190,62)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1462,182,55)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1720,-234,55)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1547,-449,40)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1905,-710,8)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1648,-1095,13)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1351,-1547,4)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -887,-2097,9)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -929,-2939,13)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 153,-3078,7)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 483,-3111,6)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -56,-2521,7)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 368,-2114,17)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 875,-2165,32)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1244,-2573,43)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1498,-2134,76)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1207,-1480,34)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 679,-1523,9)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 379,-1510,29)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -44,-1749,29)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -66,-1453,32)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 173,-1209,30)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 657,-1047,22)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 462,-766,27)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 171,-564,22)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 621,-410,-1)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1136,-667,57)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 988,-138,73)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1667,0,166)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2500,-390,95)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2549,385,108)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2618,1692,31)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1414,1162,114)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 693,1201,345)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 660,549,130)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 219,97,97)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -141,234,99)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 87,812,211)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -91,939,233)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -441,1596,358)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -58,1939,190)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -601,2088,132)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -300,2847,55)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 63,3683,39)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 543,3074,40)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 387,2570,44)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 852,2166,52)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1408,2157,98)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1189,2641,38)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1848,2700,63)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2635,2931,44)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2399,3063,54)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2394,3062,52)
end)

button(
    "Others",
    "Get all Playingcards", 
    function()
    local PlauerChar = PLAYER.PLAYER_PED_ID()
    notify("The COORDS ARE NOT PERFECTLY SET! YOU HAVE TO MOVE A BIT SORRY ", 10000)
    notify("This will take some time", 10000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1028, -2747, 14)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -74, -2005, 18)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 202, -1645, 29)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 120, -1298, 29)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 11, -1102, 29)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -539, -1279, 27)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1205, -1560, 4)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1288, -1119, 7)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1841, -1235, 13)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1155, -528, 31)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1167, -234, 37)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -971, 104, 55)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1513, -105, 54)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -3048, 585, 7)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -3150, 1115, 20)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1829, 798, 138)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -430, 1214, 325)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -409, 585, 125)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -103, 368, 112)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 253, 215, 106)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -168, -298, 40)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 183, -686, 43)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1131, -983, 46)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1159, -317, 69)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 548, -190, 54)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1487, 1128, 114)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 730, 2514, 73)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 188, 3075, 43)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -288, 2545, 75)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1103, 2714, 19)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -2306, 3388, 31)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -1583, 5204, 4)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -749, 5599, 41)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -283, 6225, 31)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 99, 6620, 32)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1876, 6410, 46)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2938, 5325, 101)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 3688, 4569, 25)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2694, 4324, 45)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2120, 4784, 40)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1707, 4920, 42)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 727, 4189, 41)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, -524, 4193, 193)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 79, 3704, 41)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 900, 3557, 33)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1690, 3588, 35)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1991, 3045, 47)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2747, 3465, 55)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2341, 2571, 47)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 2565, 297, 108)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 1325, -1652, 52)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 989, -1801, 31)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 827, -2159, 29)
    g_util.yield(5000)
    ENTITY.SET_ENTITY_COORDS_NO_OFFSET(PlauerChar, 810, -2979, 6)
end)

button(
    "Tutorials",
    "Tutorial Cayo Perico Force",
    function()
    os.execute('start https://youtu.be/EBbCT_acRcU?autoplay=1') 
end)

button(
    "Tutorials",
    "Tutorial 5 Mill Crate Sale",
    function()
    os.execute('start https://youtu.be/UZLzurqEDxs?autoplay=1') 
end)

button(
    "Dad Menu",
    "Have a Fungus",
    function()
    notify("You,ve heard of Elf on the Shelf ??")
    os.execute('start https://cdn.discordapp.com/attachments/793817367557570571/1050561404798779442/Dad_Menu_7.0.png') 
end)

button(
    "Dad Menu", 
    "Unload Daddy",
    function()
	unload = true
end)

while true do
	if unload then
        SYSTEM.WAIT(3000)
		g_lua.unregister()
		unload = false
	end
	g_util.yield()
end