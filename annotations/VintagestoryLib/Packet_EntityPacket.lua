---@meta

---@class Packet_EntityPacket
---@field EntityId number
---@field Packetid number
---@field Data number
---@field EntityIdFieldID number
---@field PacketidFieldID number
---@field DataFieldID number
Packet_EntityPacket = {}

---@return Packet_EntityPacket
function Packet_EntityPacket.ctor() end

---@param value number
function Packet_EntityPacket.SetEntityId(value) end

---@param value number
function Packet_EntityPacket.SetPacketid(value) end

---@param value number
function Packet_EntityPacket.SetData(value) end

---@return userdata
function Packet_EntityPacket.GetType() end

---@return string
function Packet_EntityPacket.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityPacket.Equals(obj) end

---@return number
function Packet_EntityPacket.GetHashCode() end


