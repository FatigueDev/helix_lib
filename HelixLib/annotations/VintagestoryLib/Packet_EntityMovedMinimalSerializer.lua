---@meta

---@class Packet_EntityMovedMinimalSerializer
Packet_EntityMovedMinimalSerializer = {}

---@return Packet_EntityMovedMinimalSerializer
function Packet_EntityMovedMinimalSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntityMovedMinimal
function Packet_EntityMovedMinimalSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntityMovedMinimal
---@return Packet_EntityMovedMinimal
function Packet_EntityMovedMinimalSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityMovedMinimal
---@return Packet_EntityMovedMinimal
function Packet_EntityMovedMinimalSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityMovedMinimal
---@return Packet_EntityMovedMinimal
function Packet_EntityMovedMinimalSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntityMovedMinimal
function Packet_EntityMovedMinimalSerializer.Serialize(stream, instance) end

---@param instance Packet_EntityMovedMinimal
---@return number
function Packet_EntityMovedMinimalSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntityMovedMinimal
function Packet_EntityMovedMinimalSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntityMovedMinimalSerializer.GetType() end

---@return string
function Packet_EntityMovedMinimalSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityMovedMinimalSerializer.Equals(obj) end

---@return number
function Packet_EntityMovedMinimalSerializer.GetHashCode() end


