---@meta

---@class Packet_CustomPacketSerializer
Packet_CustomPacketSerializer = {}

---@return Packet_CustomPacketSerializer
function Packet_CustomPacketSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_CustomPacket
function Packet_CustomPacketSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_CustomPacket
---@return Packet_CustomPacket
function Packet_CustomPacketSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CustomPacket
---@return Packet_CustomPacket
function Packet_CustomPacketSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CustomPacket
---@return Packet_CustomPacket
function Packet_CustomPacketSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_CustomPacket
function Packet_CustomPacketSerializer.Serialize(stream, instance) end

---@param instance Packet_CustomPacket
---@return number
function Packet_CustomPacketSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_CustomPacket
function Packet_CustomPacketSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_CustomPacketSerializer.GetType() end

---@return string
function Packet_CustomPacketSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_CustomPacketSerializer.Equals(obj) end

---@return number
function Packet_CustomPacketSerializer.GetHashCode() end


