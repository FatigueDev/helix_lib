---@meta

---@class ClientTask
---@field Action function
---@field Code string
ClientTask = {}

---@return ClientTask
function ClientTask.ctor() end

---@return userdata
function ClientTask.GetType() end

---@return string
function ClientTask.ToString() end

---@param obj userdata
---@return boolean
function ClientTask.Equals(obj) end

---@return number
function ClientTask.GetHashCode() end


