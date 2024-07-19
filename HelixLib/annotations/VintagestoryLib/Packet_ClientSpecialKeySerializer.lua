---@meta

---@class Packet_ClientSpecialKeySerializer
Packet_ClientSpecialKeySerializer = {}

---@return Packet_ClientSpecialKeySerializer
function Packet_ClientSpecialKeySerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ClientSpecialKey
function Packet_ClientSpecialKeySerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ClientSpecialKey
---@return Packet_ClientSpecialKey
function Packet_ClientSpecialKeySerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientSpecialKey
---@return Packet_ClientSpecialKey
function Packet_ClientSpecialKeySerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientSpecialKey
---@return Packet_ClientSpecialKey
function Packet_ClientSpecialKeySerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ClientSpecialKey
function Packet_ClientSpecialKeySerializer.Serialize(stream, instance) end

---@param instance Packet_ClientSpecialKey
---@return number
function Packet_ClientSpecialKeySerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ClientSpecialKey
function Packet_ClientSpecialKeySerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientSpecialKeySerializer.GetType() end

---@return string
function Packet_ClientSpecialKeySerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientSpecialKeySerializer.Equals(obj) end

---@return number
function Packet_ClientSpecialKeySerializer.GetHashCode() end


