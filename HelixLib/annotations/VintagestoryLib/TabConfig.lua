---@meta

---@class TabConfig
---@field Code string
---@field ListOrder number
---@field PaddingTop number
TabConfig = {}

---@return TabConfig
function TabConfig.ctor() end

---@return userdata
function TabConfig.GetType() end

---@return string
function TabConfig.ToString() end

---@param obj userdata
---@return boolean
function TabConfig.Equals(obj) end

---@return number
function TabConfig.GetHashCode() end


