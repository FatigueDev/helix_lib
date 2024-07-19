---@meta

---@class Packet_EntityAttributesSerializer
Packet_EntityAttributesSerializer = {}

---@return Packet_EntityAttributesSerializer
function Packet_EntityAttributesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntityAttributes
function Packet_EntityAttributesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntityAttributes
---@return Packet_EntityAttributes
function Packet_EntityAttributesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityAttributes
---@return Packet_EntityAttributes
function Packet_EntityAttributesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityAttributes
---@return Packet_EntityAttributes
function Packet_EntityAttributesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntityAttributes
function Packet_EntityAttributesSerializer.Serialize(stream, instance) end

---@param instance Packet_EntityAttributes
---@return number
function Packet_EntityAttributesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntityAttributes
function Packet_EntityAttributesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntityAttributesSerializer.GetType() end

---@return string
function Packet_EntityAttributesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityAttributesSerializer.Equals(obj) end

---@return number
function Packet_EntityAttributesSerializer.GetHashCode() end


