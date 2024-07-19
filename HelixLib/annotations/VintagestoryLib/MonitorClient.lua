---@meta

---@class MonitorClient
---@field Id number
---@field PacketsReceivedById number
---@field PacketsReceived number
---@field BlocksSet number
---@field MessagesSent number
---@field SetBlockPunishment Punishment
---@field MessagePunishment Punishment
MonitorClient = {}

---@return MonitorClient
function MonitorClient.ctor() end

---@return boolean
function MonitorClient.SetBlockPunished() end

---@return boolean
function MonitorClient.MessagePunished() end

---@return userdata
function MonitorClient.GetType() end

---@return string
function MonitorClient.ToString() end

---@param obj userdata
---@return boolean
function MonitorClient.Equals(obj) end

---@return number
function MonitorClient.GetHashCode() end


