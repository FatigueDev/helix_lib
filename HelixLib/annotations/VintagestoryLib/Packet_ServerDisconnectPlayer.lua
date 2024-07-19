---@meta

---@class Packet_ServerDisconnectPlayer
---@field DisconnectReason string
---@field DisconnectReasonFieldID number
Packet_ServerDisconnectPlayer = {}

---@return Packet_ServerDisconnectPlayer
function Packet_ServerDisconnectPlayer.ctor() end

---@param value string
function Packet_ServerDisconnectPlayer.SetDisconnectReason(value) end

---@return userdata
function Packet_ServerDisconnectPlayer.GetType() end

---@return string
function Packet_ServerDisconnectPlayer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerDisconnectPlayer.Equals(obj) end

---@return number
function Packet_ServerDisconnectPlayer.GetHashCode() end


