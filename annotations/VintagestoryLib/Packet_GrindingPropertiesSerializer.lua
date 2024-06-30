---@meta

---@class Packet_GrindingPropertiesSerializer
Packet_GrindingPropertiesSerializer = {}

---@return Packet_GrindingPropertiesSerializer
function Packet_GrindingPropertiesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_GrindingProperties
function Packet_GrindingPropertiesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_GrindingProperties
---@return Packet_GrindingProperties
function Packet_GrindingPropertiesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_GrindingProperties
---@return Packet_GrindingProperties
function Packet_GrindingPropertiesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_GrindingProperties
---@return Packet_GrindingProperties
function Packet_GrindingPropertiesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_GrindingProperties
function Packet_GrindingPropertiesSerializer.Serialize(stream, instance) end

---@param instance Packet_GrindingProperties
---@return number
function Packet_GrindingPropertiesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_GrindingProperties
function Packet_GrindingPropertiesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_GrindingPropertiesSerializer.GetType() end

---@return string
function Packet_GrindingPropertiesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_GrindingPropertiesSerializer.Equals(obj) end

---@return number
function Packet_GrindingPropertiesSerializer.GetHashCode() end


