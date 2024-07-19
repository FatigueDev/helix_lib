---@meta

---@class MonitorObject
MonitorObject = {}

---@return MonitorObject
function MonitorObject.ctor() end

---@return userdata
function MonitorObject.GetType() end

---@return string
function MonitorObject.ToString() end

---@param obj userdata
---@return boolean
function MonitorObject.Equals(obj) end

---@return number
function MonitorObject.GetHashCode() end


