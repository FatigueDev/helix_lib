---@meta

---@class Packet_ServerSetBlocksSerializer
Packet_ServerSetBlocksSerializer = {}

---@return Packet_ServerSetBlocksSerializer
function Packet_ServerSetBlocksSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerSetBlocks
function Packet_ServerSetBlocksSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerSetBlocks
---@return Packet_ServerSetBlocks
function Packet_ServerSetBlocksSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerSetBlocks
---@return Packet_ServerSetBlocks
function Packet_ServerSetBlocksSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerSetBlocks
---@return Packet_ServerSetBlocks
function Packet_ServerSetBlocksSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerSetBlocks
function Packet_ServerSetBlocksSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerSetBlocks
---@return number
function Packet_ServerSetBlocksSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerSetBlocks
function Packet_ServerSetBlocksSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerSetBlocksSerializer.GetType() end

---@return string
function Packet_ServerSetBlocksSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerSetBlocksSerializer.Equals(obj) end

---@return number
function Packet_ServerSetBlocksSerializer.GetHashCode() end


