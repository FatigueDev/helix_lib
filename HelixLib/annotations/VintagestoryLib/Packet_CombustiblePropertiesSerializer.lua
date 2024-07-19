---@meta

---@class Packet_CombustiblePropertiesSerializer
Packet_CombustiblePropertiesSerializer = {}

---@return Packet_CombustiblePropertiesSerializer
function Packet_CombustiblePropertiesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_CombustibleProperties
function Packet_CombustiblePropertiesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_CombustibleProperties
---@return Packet_CombustibleProperties
function Packet_CombustiblePropertiesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CombustibleProperties
---@return Packet_CombustibleProperties
function Packet_CombustiblePropertiesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_CombustibleProperties
---@return Packet_CombustibleProperties
function Packet_CombustiblePropertiesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_CombustibleProperties
function Packet_CombustiblePropertiesSerializer.Serialize(stream, instance) end

---@param instance Packet_CombustibleProperties
---@return number
function Packet_CombustiblePropertiesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_CombustibleProperties
function Packet_CombustiblePropertiesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_CombustiblePropertiesSerializer.GetType() end

---@return string
function Packet_CombustiblePropertiesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_CombustiblePropertiesSerializer.Equals(obj) end

---@return number
function Packet_CombustiblePropertiesSerializer.GetHashCode() end


