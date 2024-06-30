---@meta

---@class Packet_BlockEntityPacketSerializer
Packet_BlockEntityPacketSerializer = {}

---@return Packet_BlockEntityPacketSerializer
function Packet_BlockEntityPacketSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BlockEntityPacket
function Packet_BlockEntityPacketSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BlockEntityPacket
---@return Packet_BlockEntityPacket
function Packet_BlockEntityPacketSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockEntityPacket
---@return Packet_BlockEntityPacket
function Packet_BlockEntityPacketSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockEntityPacket
---@return Packet_BlockEntityPacket
function Packet_BlockEntityPacketSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BlockEntityPacket
function Packet_BlockEntityPacketSerializer.Serialize(stream, instance) end

---@param instance Packet_BlockEntityPacket
---@return number
function Packet_BlockEntityPacketSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BlockEntityPacket
function Packet_BlockEntityPacketSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BlockEntityPacketSerializer.GetType() end

---@return string
function Packet_BlockEntityPacketSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockEntityPacketSerializer.Equals(obj) end

---@return number
function Packet_BlockEntityPacketSerializer.GetHashCode() end


