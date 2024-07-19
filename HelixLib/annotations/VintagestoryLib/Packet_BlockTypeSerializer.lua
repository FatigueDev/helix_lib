---@meta

---@class Packet_BlockTypeSerializer
Packet_BlockTypeSerializer = {}

---@return Packet_BlockTypeSerializer
function Packet_BlockTypeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BlockType
function Packet_BlockTypeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BlockType
---@return Packet_BlockType
function Packet_BlockTypeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockType
---@return Packet_BlockType
function Packet_BlockTypeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockType
---@return Packet_BlockType
function Packet_BlockTypeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BlockType
function Packet_BlockTypeSerializer.Serialize(stream, instance) end

---@param instance Packet_BlockType
---@return number
function Packet_BlockTypeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BlockType
function Packet_BlockTypeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BlockTypeSerializer.GetType() end

---@return string
function Packet_BlockTypeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockTypeSerializer.Equals(obj) end

---@return number
function Packet_BlockTypeSerializer.GetHashCode() end


