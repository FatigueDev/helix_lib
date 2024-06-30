---@meta

---@class ModWorldConfiguration
---@field PlayStyles PlayStyle[]
---@field WorldConfigAttributes WorldConfigurationAttribute[]
ModWorldConfiguration = {}

---@return ModWorldConfiguration
function ModWorldConfiguration.ctor() end

---@return userdata
function ModWorldConfiguration.GetType() end

---@return string
function ModWorldConfiguration.ToString() end

---@param obj userdata
---@return boolean
function ModWorldConfiguration.Equals(obj) end

---@return number
function ModWorldConfiguration.GetHashCode() end


