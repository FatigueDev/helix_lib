---@meta

---@class Packet_ClientPingReply
Packet_ClientPingReply = {}

---@return Packet_ClientPingReply
function Packet_ClientPingReply.ctor() end

---@return userdata
function Packet_ClientPingReply.GetType() end

---@return string
function Packet_ClientPingReply.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientPingReply.Equals(obj) end

---@return number
function Packet_ClientPingReply.GetHashCode() end


