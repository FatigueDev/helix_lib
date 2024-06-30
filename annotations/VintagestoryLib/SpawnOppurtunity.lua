---@meta

---@class SpawnOppurtunity
---@field ForType EntityProperties
---@field Pos Vec3d
SpawnOppurtunity = {}

---@return SpawnOppurtunity
function SpawnOppurtunity.ctor() end

---@return userdata
function SpawnOppurtunity.GetType() end

---@return string
function SpawnOppurtunity.ToString() end

---@param obj userdata
---@return boolean
function SpawnOppurtunity.Equals(obj) end

---@return number
function SpawnOppurtunity.GetHashCode() end


