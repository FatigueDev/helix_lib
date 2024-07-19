---@meta

---@class Packet_BlockEntityPacket
---@field X number
---@field Y number
---@field Z number
---@field Packetid number
---@field Data number
---@field XFieldID number
---@field YFieldID number
---@field ZFieldID number
---@field PacketidFieldID number
---@field DataFieldID number
Packet_BlockEntityPacket = {}

---@return Packet_BlockEntityPacket
function Packet_BlockEntityPacket.ctor() end

---@param value number
function Packet_BlockEntityPacket.SetX(value) end

---@param value number
function Packet_BlockEntityPacket.SetY(value) end

---@param value number
function Packet_BlockEntityPacket.SetZ(value) end

---@param value number
function Packet_BlockEntityPacket.SetPacketid(value) end

---@param value number
function Packet_BlockEntityPacket.SetData(value) end

---@return userdata
function Packet_BlockEntityPacket.GetType() end

---@return string
function Packet_BlockEntityPacket.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockEntityPacket.Equals(obj) end

---@return number
function Packet_BlockEntityPacket.GetHashCode() end


