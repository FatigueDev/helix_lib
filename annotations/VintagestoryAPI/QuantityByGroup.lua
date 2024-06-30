---@meta

---@class QuantityByGroup
---@field MaxQuantity number
---@field Code AssetLocation
QuantityByGroup = {}

---@return QuantityByGroup
function QuantityByGroup.ctor() end

---@return userdata
function QuantityByGroup.GetType() end

---@return string
function QuantityByGroup.ToString() end

---@param obj userdata
---@return boolean
function QuantityByGroup.Equals(obj) end

---@return number
function QuantityByGroup.GetHashCode() end


