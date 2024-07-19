---@meta

---@class Packet_ServerSetDecorsSerializer
Packet_ServerSetDecorsSerializer = {}

---@return Packet_ServerSetDecorsSerializer
function Packet_ServerSetDecorsSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerSetDecors
function Packet_ServerSetDecorsSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerSetDecors
---@return Packet_ServerSetDecors
function Packet_ServerSetDecorsSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerSetDecors
---@return Packet_ServerSetDecors
function Packet_ServerSetDecorsSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerSetDecors
---@return Packet_ServerSetDecors
function Packet_ServerSetDecorsSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerSetDecors
function Packet_ServerSetDecorsSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerSetDecors
---@return number
function Packet_ServerSetDecorsSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerSetDecors
function Packet_ServerSetDecorsSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerSetDecorsSerializer.GetType() end

---@return string
function Packet_ServerSetDecorsSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerSetDecorsSerializer.Equals(obj) end

---@return number
function Packet_ServerSetDecorsSerializer.GetHashCode() end


