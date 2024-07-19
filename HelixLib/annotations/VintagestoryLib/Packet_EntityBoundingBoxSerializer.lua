---@meta

---@class Packet_EntityBoundingBoxSerializer
Packet_EntityBoundingBoxSerializer = {}

---@return Packet_EntityBoundingBoxSerializer
function Packet_EntityBoundingBoxSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntityBoundingBox
function Packet_EntityBoundingBoxSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntityBoundingBox
---@return Packet_EntityBoundingBox
function Packet_EntityBoundingBoxSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityBoundingBox
---@return Packet_EntityBoundingBox
function Packet_EntityBoundingBoxSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityBoundingBox
---@return Packet_EntityBoundingBox
function Packet_EntityBoundingBoxSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntityBoundingBox
function Packet_EntityBoundingBoxSerializer.Serialize(stream, instance) end

---@param instance Packet_EntityBoundingBox
---@return number
function Packet_EntityBoundingBoxSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntityBoundingBox
function Packet_EntityBoundingBoxSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntityBoundingBoxSerializer.GetType() end

---@return string
function Packet_EntityBoundingBoxSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityBoundingBoxSerializer.Equals(obj) end

---@return number
function Packet_EntityBoundingBoxSerializer.GetHashCode() end


