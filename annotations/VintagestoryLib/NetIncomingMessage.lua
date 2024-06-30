---@meta

---@class NetIncomingMessage
---@field SenderConnection NetConnection
---@field Type NetworkMessageType
---@field message number
---@field messageLength number
---@field originalMessageLength number
NetIncomingMessage = {}

---@return NetIncomingMessage
function NetIncomingMessage.ctor() end

---@return userdata
function NetIncomingMessage.GetType() end

---@return string
function NetIncomingMessage.ToString() end

---@param obj userdata
---@return boolean
function NetIncomingMessage.Equals(obj) end

---@return number
function NetIncomingMessage.GetHashCode() end


