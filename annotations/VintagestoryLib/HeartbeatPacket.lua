---@meta

---@class HeartbeatPacket
---@field token string
---@field players number
HeartbeatPacket = {}

---@return HeartbeatPacket
function HeartbeatPacket.ctor() end

---@return userdata
function HeartbeatPacket.GetType() end

---@return string
function HeartbeatPacket.ToString() end

---@param obj userdata
---@return boolean
function HeartbeatPacket.Equals(obj) end

---@return number
function HeartbeatPacket.GetHashCode() end


