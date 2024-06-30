---@meta

---@class Packet_EntityAttributeUpdateSerializer
Packet_EntityAttributeUpdateSerializer = {}

---@return Packet_EntityAttributeUpdateSerializer
function Packet_EntityAttributeUpdateSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntityAttributeUpdate
function Packet_EntityAttributeUpdateSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntityAttributeUpdate
---@return Packet_EntityAttributeUpdate
function Packet_EntityAttributeUpdateSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityAttributeUpdate
---@return Packet_EntityAttributeUpdate
function Packet_EntityAttributeUpdateSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityAttributeUpdate
---@return Packet_EntityAttributeUpdate
function Packet_EntityAttributeUpdateSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntityAttributeUpdate
function Packet_EntityAttributeUpdateSerializer.Serialize(stream, instance) end

---@param instance Packet_EntityAttributeUpdate
---@return number
function Packet_EntityAttributeUpdateSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntityAttributeUpdate
function Packet_EntityAttributeUpdateSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntityAttributeUpdateSerializer.GetType() end

---@return string
function Packet_EntityAttributeUpdateSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityAttributeUpdateSerializer.Equals(obj) end

---@return number
function Packet_EntityAttributeUpdateSerializer.GetHashCode() end


