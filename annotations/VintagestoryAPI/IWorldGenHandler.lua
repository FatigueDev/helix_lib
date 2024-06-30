---@meta

---@class IWorldGenHandler
---@field OnMapRegionGen table List of registered map region generation handlers
---@field OnMapChunkGen table List of registered map chunk generation handlers
---@field OnChunkColumnGen table List of registered map chunk generation handlers per pass (see EnumWorldGenPass)
IWorldGenHandler = {}


---@return table
function IWorldGenHandler.get_OnMapRegionGen() end

---@return table
function IWorldGenHandler.get_OnMapChunkGen() end

---@return table
function IWorldGenHandler.get_OnChunkColumnGen() end

-- Empties all three lists
function IWorldGenHandler.WipeAllHandlers() end


