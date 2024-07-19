---@meta

---@class StandardWorldProperty: WorldProperty`1
---@field Code AssetLocation
---@field Variants WorldPropertyVariant[]
StandardWorldProperty = {}

---@return StandardWorldProperty
function StandardWorldProperty.ctor() end

---@return userdata
function StandardWorldProperty.GetType() end

---@return string
function StandardWorldProperty.ToString() end

---@param obj userdata
---@return boolean
function StandardWorldProperty.Equals(obj) end

---@return number
function StandardWorldProperty.GetHashCode() end


