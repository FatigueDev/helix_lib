---@meta

---@class Packet_UnloadServerChunkSerializer
Packet_UnloadServerChunkSerializer = {}

---@return Packet_UnloadServerChunkSerializer
function Packet_UnloadServerChunkSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_UnloadServerChunk
function Packet_UnloadServerChunkSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_UnloadServerChunk
---@return Packet_UnloadServerChunk
function Packet_UnloadServerChunkSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_UnloadServerChunk
---@return Packet_UnloadServerChunk
function Packet_UnloadServerChunkSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_UnloadServerChunk
---@return Packet_UnloadServerChunk
function Packet_UnloadServerChunkSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_UnloadServerChunk
function Packet_UnloadServerChunkSerializer.Serialize(stream, instance) end

---@param instance Packet_UnloadServerChunk
---@return number
function Packet_UnloadServerChunkSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_UnloadServerChunk
function Packet_UnloadServerChunkSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_UnloadServerChunkSerializer.GetType() end

---@return string
function Packet_UnloadServerChunkSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_UnloadServerChunkSerializer.Equals(obj) end

---@return number
function Packet_UnloadServerChunkSerializer.GetHashCode() end


