---@meta

---@class Packet_NatFloatSerializer
Packet_NatFloatSerializer = {}

---@return Packet_NatFloatSerializer
function Packet_NatFloatSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_NatFloat
function Packet_NatFloatSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_NatFloat
---@return Packet_NatFloat
function Packet_NatFloatSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_NatFloat
---@return Packet_NatFloat
function Packet_NatFloatSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_NatFloat
---@return Packet_NatFloat
function Packet_NatFloatSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_NatFloat
function Packet_NatFloatSerializer.Serialize(stream, instance) end

---@param instance Packet_NatFloat
---@return number
function Packet_NatFloatSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_NatFloat
function Packet_NatFloatSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_NatFloatSerializer.GetType() end

---@return string
function Packet_NatFloatSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_NatFloatSerializer.Equals(obj) end

---@return number
function Packet_NatFloatSerializer.GetHashCode() end


