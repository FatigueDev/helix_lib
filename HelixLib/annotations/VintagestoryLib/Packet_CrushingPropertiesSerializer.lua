---@meta

---@class Packet_CrushingPropertiesSerializer
Packet_CrushingPropertiesSerializer = {}

---@return Packet_CrushingPropertiesSerializer
function Packet_CrushingPropertiesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_CrushingProperties
function Packet_CrushingPropertiesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_CrushingProperties
---@return Packet_CrushingProperties
function Packet_CrushingPropertiesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CrushingProperties
---@return Packet_CrushingProperties
function Packet_CrushingPropertiesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CrushingProperties
---@return Packet_CrushingProperties
function Packet_CrushingPropertiesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_CrushingProperties
function Packet_CrushingPropertiesSerializer.Serialize(stream, instance) end

---@param instance Packet_CrushingProperties
---@return number
function Packet_CrushingPropertiesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_CrushingProperties
function Packet_CrushingPropertiesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_CrushingPropertiesSerializer.GetType() end

---@return string
function Packet_CrushingPropertiesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_CrushingPropertiesSerializer.Equals(obj) end

---@return number
function Packet_CrushingPropertiesSerializer.GetHashCode() end


