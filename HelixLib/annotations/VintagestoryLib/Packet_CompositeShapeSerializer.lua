---@meta

---@class Packet_CompositeShapeSerializer
Packet_CompositeShapeSerializer = {}

---@return Packet_CompositeShapeSerializer
function Packet_CompositeShapeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_CompositeShape
function Packet_CompositeShapeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_CompositeShape
---@return Packet_CompositeShape
function Packet_CompositeShapeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CompositeShape
---@return Packet_CompositeShape
function Packet_CompositeShapeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CompositeShape
---@return Packet_CompositeShape
function Packet_CompositeShapeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_CompositeShape
function Packet_CompositeShapeSerializer.Serialize(stream, instance) end

---@param instance Packet_CompositeShape
---@return number
function Packet_CompositeShapeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_CompositeShape
function Packet_CompositeShapeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_CompositeShapeSerializer.GetType() end

---@return string
function Packet_CompositeShapeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_CompositeShapeSerializer.Equals(obj) end

---@return number
function Packet_CompositeShapeSerializer.GetHashCode() end


