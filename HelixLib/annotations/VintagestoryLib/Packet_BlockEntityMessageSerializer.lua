---@meta

---@class Packet_BlockEntityMessageSerializer
Packet_BlockEntityMessageSerializer = {}

---@return Packet_BlockEntityMessageSerializer
function Packet_BlockEntityMessageSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BlockEntityMessage
function Packet_BlockEntityMessageSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BlockEntityMessage
---@return Packet_BlockEntityMessage
function Packet_BlockEntityMessageSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockEntityMessage
---@return Packet_BlockEntityMessage
function Packet_BlockEntityMessageSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockEntityMessage
---@return Packet_BlockEntityMessage
function Packet_BlockEntityMessageSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BlockEntityMessage
function Packet_BlockEntityMessageSerializer.Serialize(stream, instance) end

---@param instance Packet_BlockEntityMessage
---@return number
function Packet_BlockEntityMessageSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BlockEntityMessage
function Packet_BlockEntityMessageSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BlockEntityMessageSerializer.GetType() end

---@return string
function Packet_BlockEntityMessageSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockEntityMessageSerializer.Equals(obj) end

---@return number
function Packet_BlockEntityMessageSerializer.GetHashCode() end


