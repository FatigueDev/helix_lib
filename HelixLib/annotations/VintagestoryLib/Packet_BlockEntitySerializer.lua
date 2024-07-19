---@meta

---@class Packet_BlockEntitySerializer
Packet_BlockEntitySerializer = {}

---@return Packet_BlockEntitySerializer
function Packet_BlockEntitySerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BlockEntity
function Packet_BlockEntitySerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BlockEntity
---@return Packet_BlockEntity
function Packet_BlockEntitySerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockEntity
---@return Packet_BlockEntity
function Packet_BlockEntitySerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockEntity
---@return Packet_BlockEntity
function Packet_BlockEntitySerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BlockEntity
function Packet_BlockEntitySerializer.Serialize(stream, instance) end

---@param instance Packet_BlockEntity
---@return number
function Packet_BlockEntitySerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BlockEntity
function Packet_BlockEntitySerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BlockEntitySerializer.GetType() end

---@return string
function Packet_BlockEntitySerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockEntitySerializer.Equals(obj) end

---@return number
function Packet_BlockEntitySerializer.GetHashCode() end


