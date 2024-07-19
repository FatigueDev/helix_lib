---@meta

---@class Packet_ServerPing
Packet_ServerPing = {}

---@return Packet_ServerPing
function Packet_ServerPing.ctor() end

---@return userdata
function Packet_ServerPing.GetType() end

---@return string
function Packet_ServerPing.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerPing.Equals(obj) end

---@return number
function Packet_ServerPing.GetHashCode() end


