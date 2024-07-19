---@meta

---@class Packet_EntitySerializer
Packet_EntitySerializer = {}

---@return Packet_EntitySerializer
function Packet_EntitySerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_Entity
function Packet_EntitySerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_Entity
---@return Packet_Entity
function Packet_EntitySerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Entity
---@return Packet_Entity
function Packet_EntitySerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Entity
---@return Packet_Entity
function Packet_EntitySerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_Entity
function Packet_EntitySerializer.Serialize(stream, instance) end

---@param instance Packet_Entity
---@return number
function Packet_EntitySerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_Entity
function Packet_EntitySerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntitySerializer.GetType() end

---@return string
function Packet_EntitySerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntitySerializer.Equals(obj) end

---@return number
function Packet_EntitySerializer.GetHashCode() end


