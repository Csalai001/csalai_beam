log('D', "modScript", "We made it!")

-- Load the extension :)
setExtensionUnloadMode("exampleMod", "manual")

-- from `lua/ge/main.lua`:
-- extensions' unloadMode is "auto" by default
--  - "auto": they may get unloaded when switching maps, loading a scenario, and other circumstances
--  - "manual": they will not get unloaded, instead the extension lifetime is controlled explicitly (manually)