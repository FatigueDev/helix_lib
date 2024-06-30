---@meta

---@class Packet_IntMapSerializer
Packet_IntMapSerializer = {}

---@return Packet_IntMapSerializer
function Packet_IntMapSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_IntMap
function Packet_IntMapSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_IntMap
---@return Packet_IntMap
function Packet_IntMapSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_IntMap
---@return Packet_IntMap
function Packet_IntMapSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_IntMap
---@return Packet_IntMap
function Packet_IntMapSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_IntMap
function Packet_IntMapSerializer.Serialize(stream, instance) end

---@param instance Packet_IntMap
---@return number
function Packet_IntMapSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_IntMap
function Packet_IntMapSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_IntMapSerializer.GetType() end

---@return string
function Packet_IntMapSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_IntMapSerializer.Equals(obj) end

---@return number
function Packet_IntMapSerializer.GetHashCode() end


