---@meta

---@class Packet_CustomPacket
---@field ChannelId number
---@field MessageId number
---@field Data number
---@field ChannelIdFieldID number
---@field MessageIdFieldID number
---@field DataFieldID number
Packet_CustomPacket = {}

---@return Packet_CustomPacket
function Packet_CustomPacket.ctor() end

---@param value number
function Packet_CustomPacket.SetChannelId(value) end

---@param value number
function Packet_CustomPacket.SetMessageId(value) end

---@param value number
function Packet_CustomPacket.SetData(value) end

---@return userdata
function Packet_CustomPacket.GetType() end

---@return string
function Packet_CustomPacket.ToString() end

---@param obj userdata
---@return boolean
function Packet_CustomPacket.Equals(obj) end

---@return number
function Packet_CustomPacket.GetHashCode() end


