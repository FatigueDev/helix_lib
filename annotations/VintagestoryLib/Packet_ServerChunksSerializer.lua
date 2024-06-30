---@meta

---@class Packet_ServerChunksSerializer
Packet_ServerChunksSerializer = {}

---@return Packet_ServerChunksSerializer
function Packet_ServerChunksSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerChunks
function Packet_ServerChunksSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerChunks
---@return Packet_ServerChunks
function Packet_ServerChunksSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerChunks
---@return Packet_ServerChunks
function Packet_ServerChunksSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerChunks
---@return Packet_ServerChunks
function Packet_ServerChunksSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerChunks
function Packet_ServerChunksSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerChunks
---@return number
function Packet_ServerChunksSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerChunks
function Packet_ServerChunksSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerChunksSerializer.GetType() end

---@return string
function Packet_ServerChunksSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerChunksSerializer.Equals(obj) end

---@return number
function Packet_ServerChunksSerializer.GetHashCode() end


