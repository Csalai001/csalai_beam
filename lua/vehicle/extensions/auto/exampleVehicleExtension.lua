local M = {}

--[[
    This is quite similar to the other extension, the difference is that this one is for vehicles.
    It has some of the same hooks, but not all.

    Some notes:
    1. By default, these aren't automatically loaded. If you put it in the `auto` directory like this, it will get loaded automatically.

    2. Instead of pressing CTRL+L to reload everything, simply press CTRL+R to reset the vehicle and it will find the changes you made to this file.

    3. If you want to get the vehicle in a vehicle extension, simply use `obj`. It's basically `this` or `self`.
       Since it's a metatable, you'll have to use the colon to make calls, example: `obj:setWind(0, 0, 1000)`

    4. If you want to run vehicle Lua in the console, make sure to change the target/mode (or whatever you want to call it) in the bottom left of the console.
       Change it to the vehicle you want to run it on.
]]

-- Game Function Hooks
--------------------------------------------
local function onExtensionLoaded()
    log('D', "onExtensionLoaded", "Vehicle Loaded!")

    -- Let's call one of our exported functions from our extension with this vehicle ID as an argument
    obj:queueGameEngineLua("extensions.exampleMod.onVehicleExtensionLoaded(" .. obj:getID() .. ")")
end

local function onExtensionUnloaded()
    log('D', "onExtensionUnloaded", "Vehicle Unloaded!")
end

-- Custom Functions
--------------------------------------------
local function onDataReceived(jsonStr)
    -- dumps and jsonDecode are both globals defined in `lua/common/utils.lua`. You'll want to use `dumps` or `dump` a lot if you want to quickly find all available functions for x type
    -- or for doing things like this
    log('D', "onDataReceived", dumps(jsonDecode(jsonStr)))
end

-- Export Interface
--------------------------------------------
M.onExtensionLoaded   = onExtensionLoaded
M.onExtensionUnloaded = onExtensionUnloaded

M.onDataReceived      = onDataReceived

return M