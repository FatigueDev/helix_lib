---@meta

---@class Packet_ServerSetBlockSerializer
Packet_ServerSetBlockSerializer = {}

---@return Packet_ServerSetBlockSerializer
function Packet_ServerSetBlockSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerSetBlock
function Packet_ServerSetBlockSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerSetBlock
---@return Packet_ServerSetBlock
function Packet_ServerSetBlockSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerSetBlock
---@return Packet_ServerSetBlock
function Packet_ServerSetBlockSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerSetBlock
---@return Packet_ServerSetBlock
function Packet_ServerSetBlockSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerSetBlock
function Packet_ServerSetBlockSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerSetBlock
---@return number
function Packet_ServerSetBlockSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerSetBlock
function Packet_ServerSetBlockSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerSetBlockSerializer.GetType() end

---@return string
function Packet_ServerSetBlockSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerSetBlockSerializer.Equals(obj) end

---@return number
function Packet_ServerSetBlockSerializer.GetHashCode() end


