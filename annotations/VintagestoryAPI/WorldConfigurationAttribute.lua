---@meta

---@class WorldConfigurationAttribute
---@field TypedDefault userdata
---@field DataType EnumDataType
---@field Category string
---@field Code string
---@field Min number
---@field Max number
---@field Step number
---@field OnCustomizeScreen boolean
---@field Default string
---@field Values string
---@field Names string
---@field OnlyDuringWorldCreate boolean
WorldConfigurationAttribute = {}

---@return WorldConfigurationAttribute
function WorldConfigurationAttribute.ctor() end

---@param text string
---@return userdata
function WorldConfigurationAttribute.stringToValue(text) end

---@param value string
---@return string
function WorldConfigurationAttribute.valueToHumanReadable(value) end

---@return userdata
function WorldConfigurationAttribute.get_TypedDefault() end

---@return userdata
function WorldConfigurationAttribute.GetType() end

---@return string
function WorldConfigurationAttribute.ToString() end

---@param obj userdata
---@return boolean
function WorldConfigurationAttribute.Equals(obj) end

---@return number
function WorldConfigurationAttribute.GetHashCode() end


