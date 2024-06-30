---@meta

---@class Packet_ServerSerializer
Packet_ServerSerializer = {}

---@return Packet_ServerSerializer
function Packet_ServerSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_Server
function Packet_ServerSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_Server
---@return Packet_Server
function Packet_ServerSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Server
---@return Packet_Server
function Packet_ServerSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Server
---@return Packet_Server
function Packet_ServerSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_Server
function Packet_ServerSerializer.Serialize(stream, instance) end

---@param instance Packet_Server
---@return number
function Packet_ServerSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_Server
function Packet_ServerSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerSerializer.GetType() end

---@return string
function Packet_ServerSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerSerializer.Equals(obj) end

---@return number
function Packet_ServerSerializer.GetHashCode() end


