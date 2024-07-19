---@meta

---@class UnregisterPacket
---@field token string
UnregisterPacket = {}

---@return UnregisterPacket
function UnregisterPacket.ctor() end

---@return userdata
function UnregisterPacket.GetType() end

---@return string
function UnregisterPacket.ToString() end

---@param obj userdata
---@return boolean
function UnregisterPacket.Equals(obj) end

---@return number
function UnregisterPacket.GetHashCode() end


