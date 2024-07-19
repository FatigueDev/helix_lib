---@meta

---@class Packet_ModelTransformSerializer
Packet_ModelTransformSerializer = {}

---@return Packet_ModelTransformSerializer
function Packet_ModelTransformSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ModelTransform
function Packet_ModelTransformSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ModelTransform
---@return Packet_ModelTransform
function Packet_ModelTransformSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ModelTransform
---@return Packet_ModelTransform
function Packet_ModelTransformSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ModelTransform
---@return Packet_ModelTransform
function Packet_ModelTransformSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ModelTransform
function Packet_ModelTransformSerializer.Serialize(stream, instance) end

---@param instance Packet_ModelTransform
---@return number
function Packet_ModelTransformSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ModelTransform
function Packet_ModelTransformSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ModelTransformSerializer.GetType() end

---@return string
function Packet_ModelTransformSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ModelTransformSerializer.Equals(obj) end

---@return number
function Packet_ModelTransformSerializer.GetHashCode() end


