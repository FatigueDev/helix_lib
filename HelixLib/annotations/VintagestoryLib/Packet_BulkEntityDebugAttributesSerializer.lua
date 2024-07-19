---@meta

---@class Packet_BulkEntityDebugAttributesSerializer
Packet_BulkEntityDebugAttributesSerializer = {}

---@return Packet_BulkEntityDebugAttributesSerializer
function Packet_BulkEntityDebugAttributesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BulkEntityDebugAttributes
function Packet_BulkEntityDebugAttributesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BulkEntityDebugAttributes
---@return Packet_BulkEntityDebugAttributes
function Packet_BulkEntityDebugAttributesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BulkEntityDebugAttributes
---@return Packet_BulkEntityDebugAttributes
function Packet_BulkEntityDebugAttributesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BulkEntityDebugAttributes
---@return Packet_BulkEntityDebugAttributes
function Packet_BulkEntityDebugAttributesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BulkEntityDebugAttributes
function Packet_BulkEntityDebugAttributesSerializer.Serialize(stream, instance) end

---@param instance Packet_BulkEntityDebugAttributes
---@return number
function Packet_BulkEntityDebugAttributesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BulkEntityDebugAttributes
function Packet_BulkEntityDebugAttributesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BulkEntityDebugAttributesSerializer.GetType() end

---@return string
function Packet_BulkEntityDebugAttributesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BulkEntityDebugAttributesSerializer.Equals(obj) end

---@return number
function Packet_BulkEntityDebugAttributesSerializer.GetHashCode() end


