---@meta

---@class FertilizerProps
---@field N number
---@field P number
---@field K number
---@field PermaBoost PermaFertilityBoost
FertilizerProps = {}

---@return FertilizerProps
function FertilizerProps.ctor() end

---@return userdata
function FertilizerProps.GetType() end

---@return string
function FertilizerProps.ToString() end

---@param obj userdata
---@return boolean
function FertilizerProps.Equals(obj) end

---@return number
function FertilizerProps.GetHashCode() end


