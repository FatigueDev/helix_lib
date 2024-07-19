---@meta

---@class Packet_EntityPositionSerializer
Packet_EntityPositionSerializer = {}

---@return Packet_EntityPositionSerializer
function Packet_EntityPositionSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntityPosition
function Packet_EntityPositionSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntityPosition
---@return Packet_EntityPosition
function Packet_EntityPositionSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityPosition
---@return Packet_EntityPosition
function Packet_EntityPositionSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityPosition
---@return Packet_EntityPosition
function Packet_EntityPositionSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntityPosition
function Packet_EntityPositionSerializer.Serialize(stream, instance) end

---@param instance Packet_EntityPosition
---@return number
function Packet_EntityPositionSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntityPosition
function Packet_EntityPositionSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntityPositionSerializer.GetType() end

---@return string
function Packet_EntityPositionSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityPositionSerializer.Equals(obj) end

---@return number
function Packet_EntityPositionSerializer.GetHashCode() end


