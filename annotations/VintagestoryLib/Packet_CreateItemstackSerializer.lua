---@meta

---@class Packet_CreateItemstackSerializer
Packet_CreateItemstackSerializer = {}

---@return Packet_CreateItemstackSerializer
function Packet_CreateItemstackSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_CreateItemstack
function Packet_CreateItemstackSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_CreateItemstack
---@return Packet_CreateItemstack
function Packet_CreateItemstackSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CreateItemstack
---@return Packet_CreateItemstack
function Packet_CreateItemstackSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CreateItemstack
---@return Packet_CreateItemstack
function Packet_CreateItemstackSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_CreateItemstack
function Packet_CreateItemstackSerializer.Serialize(stream, instance) end

---@param instance Packet_CreateItemstack
---@return number
function Packet_CreateItemstackSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_CreateItemstack
function Packet_CreateItemstackSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_CreateItemstackSerializer.GetType() end

---@return string
function Packet_CreateItemstackSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_CreateItemstackSerializer.Equals(obj) end

---@return number
function Packet_CreateItemstackSerializer.GetHashCode() end


