-- ATLAS

-- Mod Icon
SMODS.Atlas({
    key = "ModIcon", 
    path = "icon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
}):register()

-- Placeholder
SMODS.Atlas({
    key = "Placeholder", 
    path = "placeholder.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()



--[[ Jokers
SMODS.Atlas({
    key = "Jokers", 
    path = "jokers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()
]]

-- Load Files
assert(SMODS.load_file("src/jokers.lua"))()