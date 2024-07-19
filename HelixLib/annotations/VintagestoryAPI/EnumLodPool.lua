---@meta

---@class EnumLodPool
---@field NearbyDetail number
---@field Everywhere number
---@field EverywhereExceptFar number
---@field FarDistanceOnly number
EnumLodPool = {}

---@return EnumLodPool
function EnumLodPool.ctor() end

---@return userdata
function EnumLodPool.GetType() end

---@return string
function EnumLodPool.ToString() end

---@param obj userdata
---@return boolean
function EnumLodPool.Equals(obj) end

---@return number
function EnumLodPool.GetHashCode() end


