---@meta

---@class Packet_MoveItemstackSerializer
Packet_MoveItemstackSerializer = {}

---@return Packet_MoveItemstackSerializer
function Packet_MoveItemstackSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_MoveItemstack
function Packet_MoveItemstackSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_MoveItemstack
---@return Packet_MoveItemstack
function Packet_MoveItemstackSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_MoveItemstack
---@return Packet_MoveItemstack
function Packet_MoveItemstackSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_MoveItemstack
---@return Packet_MoveItemstack
function Packet_MoveItemstackSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_MoveItemstack
function Packet_MoveItemstackSerializer.Serialize(stream, instance) end

---@param instance Packet_MoveItemstack
---@return number
function Packet_MoveItemstackSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_MoveItemstack
function Packet_MoveItemstackSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_MoveItemstackSerializer.GetType() end

---@return string
function Packet_MoveItemstackSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_MoveItemstackSerializer.Equals(obj) end

---@return number
function Packet_MoveItemstackSerializer.GetHashCode() end


