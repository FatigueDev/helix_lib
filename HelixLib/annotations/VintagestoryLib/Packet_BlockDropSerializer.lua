---@meta

---@class Packet_BlockDropSerializer
Packet_BlockDropSerializer = {}

---@return Packet_BlockDropSerializer
function Packet_BlockDropSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BlockDrop
function Packet_BlockDropSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BlockDrop
---@return Packet_BlockDrop
function Packet_BlockDropSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockDrop
---@return Packet_BlockDrop
function Packet_BlockDropSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockDrop
---@return Packet_BlockDrop
function Packet_BlockDropSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BlockDrop
function Packet_BlockDropSerializer.Serialize(stream, instance) end

---@param instance Packet_BlockDrop
---@return number
function Packet_BlockDropSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BlockDrop
function Packet_BlockDropSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BlockDropSerializer.GetType() end

---@return string
function Packet_BlockDropSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockDropSerializer.Equals(obj) end

---@return number
function Packet_BlockDropSerializer.GetHashCode() end


