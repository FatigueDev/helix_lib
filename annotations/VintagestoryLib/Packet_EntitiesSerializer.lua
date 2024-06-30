---@meta

---@class Packet_EntitiesSerializer
Packet_EntitiesSerializer = {}

---@return Packet_EntitiesSerializer
function Packet_EntitiesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_Entities
function Packet_EntitiesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_Entities
---@return Packet_Entities
function Packet_EntitiesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Entities
---@return Packet_Entities
function Packet_EntitiesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_Entities
---@return Packet_Entities
function Packet_EntitiesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_Entities
function Packet_EntitiesSerializer.Serialize(stream, instance) end

---@param instance Packet_Entities
---@return number
function Packet_EntitiesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_Entities
function Packet_EntitiesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntitiesSerializer.GetType() end

---@return string
function Packet_EntitiesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntitiesSerializer.Equals(obj) end

---@return number
function Packet_EntitiesSerializer.GetHashCode() end


