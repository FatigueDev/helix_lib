---@meta

---@class Packet_BlockEntitiesSerializer
Packet_BlockEntitiesSerializer = {}

---@return Packet_BlockEntitiesSerializer
function Packet_BlockEntitiesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BlockEntities
function Packet_BlockEntitiesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BlockEntities
---@return Packet_BlockEntities
function Packet_BlockEntitiesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockEntities
---@return Packet_BlockEntities
function Packet_BlockEntitiesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockEntities
---@return Packet_BlockEntities
function Packet_BlockEntitiesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BlockEntities
function Packet_BlockEntitiesSerializer.Serialize(stream, instance) end

---@param instance Packet_BlockEntities
---@return number
function Packet_BlockEntitiesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BlockEntities
function Packet_BlockEntitiesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BlockEntitiesSerializer.GetType() end

---@return string
function Packet_BlockEntitiesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockEntitiesSerializer.Equals(obj) end

---@return number
function Packet_BlockEntitiesSerializer.GetHashCode() end


