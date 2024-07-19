---@meta

---@class Packet_ServerChunkSerializer
Packet_ServerChunkSerializer = {}

---@return Packet_ServerChunkSerializer
function Packet_ServerChunkSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerChunk
function Packet_ServerChunkSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerChunk
---@return Packet_ServerChunk
function Packet_ServerChunkSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerChunk
---@return Packet_ServerChunk
function Packet_ServerChunkSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerChunk
---@return Packet_ServerChunk
function Packet_ServerChunkSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerChunk
function Packet_ServerChunkSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerChunk
---@return number
function Packet_ServerChunkSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerChunk
function Packet_ServerChunkSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerChunkSerializer.GetType() end

---@return string
function Packet_ServerChunkSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerChunkSerializer.Equals(obj) end

---@return number
function Packet_ServerChunkSerializer.GetHashCode() end


