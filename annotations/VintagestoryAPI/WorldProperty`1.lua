---@meta

---@class WorldProperty`1
---@field Code AssetLocation
---@field Variants T[]
WorldProperty`1 = {}

---@return WorldProperty`1
function WorldProperty`1.ctor() end

---@return userdata
function WorldProperty`1.GetType() end

---@return string
function WorldProperty`1.ToString() end

---@param obj userdata
---@return boolean
function WorldProperty`1.Equals(obj) end

---@return number
function WorldProperty`1.GetHashCode() end


