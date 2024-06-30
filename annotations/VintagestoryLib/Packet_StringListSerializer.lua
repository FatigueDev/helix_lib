---@meta

---@class Packet_StringListSerializer
Packet_StringListSerializer = {}

---@return Packet_StringListSerializer
function Packet_StringListSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_StringList
function Packet_StringListSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_StringList
---@return Packet_StringList
function Packet_StringListSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_StringList
---@return Packet_StringList
function Packet_StringListSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_StringList
---@return Packet_StringList
function Packet_StringListSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_StringList
function Packet_StringListSerializer.Serialize(stream, instance) end

---@param instance Packet_StringList
---@return number
function Packet_StringListSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_StringList
function Packet_StringListSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_StringListSerializer.GetType() end

---@return string
function Packet_StringListSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_StringListSerializer.Equals(obj) end

---@return number
function Packet_StringListSerializer.GetHashCode() end


