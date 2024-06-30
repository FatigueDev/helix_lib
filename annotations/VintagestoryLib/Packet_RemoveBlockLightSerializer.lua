---@meta

---@class Packet_RemoveBlockLightSerializer
Packet_RemoveBlockLightSerializer = {}

---@return Packet_RemoveBlockLightSerializer
function Packet_RemoveBlockLightSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_RemoveBlockLight
function Packet_RemoveBlockLightSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_RemoveBlockLight
---@return Packet_RemoveBlockLight
function Packet_RemoveBlockLightSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_RemoveBlockLight
---@return Packet_RemoveBlockLight
function Packet_RemoveBlockLightSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_RemoveBlockLight
---@return Packet_RemoveBlockLight
function Packet_RemoveBlockLightSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_RemoveBlockLight
function Packet_RemoveBlockLightSerializer.Serialize(stream, instance) end

---@param instance Packet_RemoveBlockLight
---@return number
function Packet_RemoveBlockLightSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_RemoveBlockLight
function Packet_RemoveBlockLightSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_RemoveBlockLightSerializer.GetType() end

---@return string
function Packet_RemoveBlockLightSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_RemoveBlockLightSerializer.Equals(obj) end

---@return number
function Packet_RemoveBlockLightSerializer.GetHashCode() end


