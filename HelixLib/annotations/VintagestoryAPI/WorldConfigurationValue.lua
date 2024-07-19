---@meta

---@class WorldConfigurationValue
---@field Attribute WorldConfigurationAttribute
---@field Code string
---@field Value userdata
WorldConfigurationValue = {}

---@return WorldConfigurationValue
function WorldConfigurationValue.ctor() end

---@return userdata
function WorldConfigurationValue.GetType() end

---@return string
function WorldConfigurationValue.ToString() end

---@param obj userdata
---@return boolean
function WorldConfigurationValue.Equals(obj) end

---@return number
function WorldConfigurationValue.GetHashCode() end


