---@meta

---@class Packet_BulkEntityAttributesSerializer
Packet_BulkEntityAttributesSerializer = {}

---@return Packet_BulkEntityAttributesSerializer
function Packet_BulkEntityAttributesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BulkEntityAttributes
function Packet_BulkEntityAttributesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BulkEntityAttributes
---@return Packet_BulkEntityAttributes
function Packet_BulkEntityAttributesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BulkEntityAttributes
---@return Packet_BulkEntityAttributes
function Packet_BulkEntityAttributesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BulkEntityAttributes
---@return Packet_BulkEntityAttributes
function Packet_BulkEntityAttributesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BulkEntityAttributes
function Packet_BulkEntityAttributesSerializer.Serialize(stream, instance) end

---@param instance Packet_BulkEntityAttributes
---@return number
function Packet_BulkEntityAttributesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BulkEntityAttributes
function Packet_BulkEntityAttributesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BulkEntityAttributesSerializer.GetType() end

---@return string
function Packet_BulkEntityAttributesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BulkEntityAttributesSerializer.Equals(obj) end

---@return number
function Packet_BulkEntityAttributesSerializer.GetHashCode() end


