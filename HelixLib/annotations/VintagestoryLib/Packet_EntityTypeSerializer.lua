---@meta

---@class Packet_EntityTypeSerializer
Packet_EntityTypeSerializer = {}

---@return Packet_EntityTypeSerializer
function Packet_EntityTypeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntityType
function Packet_EntityTypeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntityType
---@return Packet_EntityType
function Packet_EntityTypeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityType
---@return Packet_EntityType
function Packet_EntityTypeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityType
---@return Packet_EntityType
function Packet_EntityTypeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntityType
function Packet_EntityTypeSerializer.Serialize(stream, instance) end

---@param instance Packet_EntityType
---@return number
function Packet_EntityTypeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntityType
function Packet_EntityTypeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntityTypeSerializer.GetType() end

---@return string
function Packet_EntityTypeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityTypeSerializer.Equals(obj) end

---@return number
function Packet_EntityTypeSerializer.GetHashCode() end


