---@meta

---@class PlayerSpawnPos
---@field x number
---@field y Nullable`1
---@field z number
---@field yaw Nullable`1
---@field pitch Nullable`1
---@field roll Nullable`1
---@field RemainingUses number
PlayerSpawnPos = {}

---@return PlayerSpawnPos
function PlayerSpawnPos.ctor() end
---@param x number
---@param y Nullable`1
---@param z number
---@return PlayerSpawnPos
function PlayerSpawnPos.ctor(x, y, z) end

---@return string
function PlayerSpawnPos.ToString() end

---@return userdata
function PlayerSpawnPos.GetType() end

---@param obj userdata
---@return boolean
function PlayerSpawnPos.Equals(obj) end

---@return number
function PlayerSpawnPos.GetHashCode() end


