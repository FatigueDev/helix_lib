---@meta

---@class Packet_EntityPacketSerializer
Packet_EntityPacketSerializer = {}

---@return Packet_EntityPacketSerializer
function Packet_EntityPacketSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntityPacket
function Packet_EntityPacketSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntityPacket
---@return Packet_EntityPacket
function Packet_EntityPacketSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityPacket
---@return Packet_EntityPacket
function Packet_EntityPacketSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityPacket
---@return Packet_EntityPacket
function Packet_EntityPacketSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntityPacket
function Packet_EntityPacketSerializer.Serialize(stream, instance) end

---@param instance Packet_EntityPacket
---@return number
function Packet_EntityPacketSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntityPacket
function Packet_EntityPacketSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntityPacketSerializer.GetType() end

---@return string
function Packet_EntityPacketSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityPacketSerializer.Equals(obj) end

---@return number
function Packet_EntityPacketSerializer.GetHashCode() end


