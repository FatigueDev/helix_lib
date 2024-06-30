---@meta

---@class Packet_VariantPartSerializer
Packet_VariantPartSerializer = {}

---@return Packet_VariantPartSerializer
function Packet_VariantPartSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_VariantPart
function Packet_VariantPartSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_VariantPart
---@return Packet_VariantPart
function Packet_VariantPartSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_VariantPart
---@return Packet_VariantPart
function Packet_VariantPartSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_VariantPart
---@return Packet_VariantPart
function Packet_VariantPartSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_VariantPart
function Packet_VariantPartSerializer.Serialize(stream, instance) end

---@param instance Packet_VariantPart
---@return number
function Packet_VariantPartSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_VariantPart
function Packet_VariantPartSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_VariantPartSerializer.GetType() end

---@return string
function Packet_VariantPartSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_VariantPartSerializer.Equals(obj) end

---@return number
function Packet_VariantPartSerializer.GetHashCode() end


