---@meta

-- The spawn conditions assigned to various things.
---@class SpawnConditions
---@field Climate ClimateSpawnCondition Override values for climate
---@field Runtime RuntimeSpawnConditions Runtime requirements for the object to spawn.
---@field Worldgen WorldGenSpawnConditions Worldgen/region requirements for the object to spawn.
SpawnConditions = {}

---@return SpawnConditions
function SpawnConditions.ctor() end

---@return SpawnConditions # The spawn conditions assigned to various things.
function SpawnConditions.Clone() end

---@return userdata
function SpawnConditions.GetType() end

---@return string
function SpawnConditions.ToString() end

---@param obj userdata
---@return boolean
function SpawnConditions.Equals(obj) end

---@return number
function SpawnConditions.GetHashCode() end


