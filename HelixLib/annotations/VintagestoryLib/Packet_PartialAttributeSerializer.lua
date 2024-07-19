---@meta

---@class Packet_PartialAttributeSerializer
Packet_PartialAttributeSerializer = {}

---@return Packet_PartialAttributeSerializer
function Packet_PartialAttributeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_PartialAttribute
function Packet_PartialAttributeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_PartialAttribute
---@return Packet_PartialAttribute
function Packet_PartialAttributeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PartialAttribute
---@return Packet_PartialAttribute
function Packet_PartialAttributeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PartialAttribute
---@return Packet_PartialAttribute
function Packet_PartialAttributeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_PartialAttribute
function Packet_PartialAttributeSerializer.Serialize(stream, instance) end

---@param instance Packet_PartialAttribute
---@return number
function Packet_PartialAttributeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_PartialAttribute
function Packet_PartialAttributeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_PartialAttributeSerializer.GetType() end

---@return string
function Packet_PartialAttributeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_PartialAttributeSerializer.Equals(obj) end

---@return number
function Packet_PartialAttributeSerializer.GetHashCode() end


