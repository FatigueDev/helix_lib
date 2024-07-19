---@meta

---@class Packet_ServerEntityDrawBlockSerializer
Packet_ServerEntityDrawBlockSerializer = {}

---@return Packet_ServerEntityDrawBlockSerializer
function Packet_ServerEntityDrawBlockSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerEntityDrawBlock
function Packet_ServerEntityDrawBlockSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerEntityDrawBlock
---@return Packet_ServerEntityDrawBlock
function Packet_ServerEntityDrawBlockSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerEntityDrawBlock
---@return Packet_ServerEntityDrawBlock
function Packet_ServerEntityDrawBlockSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerEntityDrawBlock
---@return Packet_ServerEntityDrawBlock
function Packet_ServerEntityDrawBlockSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerEntityDrawBlock
function Packet_ServerEntityDrawBlockSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerEntityDrawBlock
---@return number
function Packet_ServerEntityDrawBlockSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerEntityDrawBlock
function Packet_ServerEntityDrawBlockSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerEntityDrawBlockSerializer.GetType() end

---@return string
function Packet_ServerEntityDrawBlockSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerEntityDrawBlockSerializer.Equals(obj) end

---@return number
function Packet_ServerEntityDrawBlockSerializer.GetHashCode() end


