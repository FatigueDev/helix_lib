---@meta

---@class WorldGenHandler:  IWorldGenHandler
---@field OnInitWorldGen table
---@field OnMapRegionGen table
---@field OnMapChunkGen table
---@field OnChunkColumnGen table
---@field SpecialHooks table
WorldGenHandler = {}

---@return WorldGenHandler
function WorldGenHandler.ctor() end

function WorldGenHandler.WipeAllHandlers() end

---@return userdata
function WorldGenHandler.GetType() end

---@return string
function WorldGenHandler.ToString() end

---@param obj userdata
---@return boolean
function WorldGenHandler.Equals(obj) end

---@return number
function WorldGenHandler.GetHashCode() end


