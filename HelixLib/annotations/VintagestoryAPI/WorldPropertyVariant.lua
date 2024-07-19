---@meta

---@class WorldPropertyVariant
---@field Code AssetLocation
WorldPropertyVariant = {}

---@return WorldPropertyVariant
function WorldPropertyVariant.ctor() end

---@return userdata
function WorldPropertyVariant.GetType() end

---@return string
function WorldPropertyVariant.ToString() end

---@param obj userdata
---@return boolean
function WorldPropertyVariant.Equals(obj) end

---@return number
function WorldPropertyVariant.GetHashCode() end


