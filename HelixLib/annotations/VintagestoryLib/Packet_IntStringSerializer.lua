---@meta

---@class Packet_IntStringSerializer
Packet_IntStringSerializer = {}

---@return Packet_IntStringSerializer
function Packet_IntStringSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_IntString
function Packet_IntStringSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_IntString
---@return Packet_IntString
function Packet_IntStringSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_IntString
---@return Packet_IntString
function Packet_IntStringSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_IntString
---@return Packet_IntString
function Packet_IntStringSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_IntString
function Packet_IntStringSerializer.Serialize(stream, instance) end

---@param instance Packet_IntString
---@return number
function Packet_IntStringSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_IntString
function Packet_IntStringSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_IntStringSerializer.GetType() end

---@return string
function Packet_IntStringSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_IntStringSerializer.Equals(obj) end

---@return number
function Packet_IntStringSerializer.GetHashCode() end


