---@meta

---@class SpawnState
---@field ForType EntityProperties
---@field SelfAndCompanionProps EntityProperties[]
---@field SpawnableAmountGlobal number
---@field SpawnCapScaledPerPlayer number
---@field NextGroupSize number
---@field profilerName string
---@field surfaceMap number
SpawnState = {}

---@return SpawnState
function SpawnState.ctor() end

---@return userdata
function SpawnState.GetType() end

---@return string
function SpawnState.ToString() end

---@param obj userdata
---@return boolean
function SpawnState.Equals(obj) end

---@return number
function SpawnState.GetHashCode() end


