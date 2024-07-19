---@meta

---@class Packet_ServerMapChunkSerializer
Packet_ServerMapChunkSerializer = {}

---@return Packet_ServerMapChunkSerializer
function Packet_ServerMapChunkSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerMapChunk
function Packet_ServerMapChunkSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerMapChunk
---@return Packet_ServerMapChunk
function Packet_ServerMapChunkSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerMapChunk
---@return Packet_ServerMapChunk
function Packet_ServerMapChunkSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerMapChunk
---@return Packet_ServerMapChunk
function Packet_ServerMapChunkSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerMapChunk
function Packet_ServerMapChunkSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerMapChunk
---@return number
function Packet_ServerMapChunkSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerMapChunk
function Packet_ServerMapChunkSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerMapChunkSerializer.GetType() end

---@return string
function Packet_ServerMapChunkSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerMapChunkSerializer.Equals(obj) end

---@return number
function Packet_ServerMapChunkSerializer.GetHashCode() end


