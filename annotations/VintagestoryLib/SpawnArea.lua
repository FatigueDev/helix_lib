---@meta

---@class SpawnArea
---@field chunkY number
---@field ChunkColumnCoords Vec2i[]
---@field spawnCounts table
SpawnArea = {}

---@return SpawnArea
function SpawnArea.ctor() end

---@return userdata
function SpawnArea.GetType() end

---@return string
function SpawnArea.ToString() end

---@param obj userdata
---@return boolean
function SpawnArea.Equals(obj) end

---@return number
function SpawnArea.GetHashCode() end


