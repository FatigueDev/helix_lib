---@meta

---@class Packet_GeneratedStructureSerializer
Packet_GeneratedStructureSerializer = {}

---@return Packet_GeneratedStructureSerializer
function Packet_GeneratedStructureSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_GeneratedStructure
function Packet_GeneratedStructureSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_GeneratedStructure
---@return Packet_GeneratedStructure
function Packet_GeneratedStructureSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_GeneratedStructure
---@return Packet_GeneratedStructure
function Packet_GeneratedStructureSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_GeneratedStructure
---@return Packet_GeneratedStructure
function Packet_GeneratedStructureSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_GeneratedStructure
function Packet_GeneratedStructureSerializer.Serialize(stream, instance) end

---@param instance Packet_GeneratedStructure
---@return number
function Packet_GeneratedStructureSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_GeneratedStructure
function Packet_GeneratedStructureSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_GeneratedStructureSerializer.GetType() end

---@return string
function Packet_GeneratedStructureSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_GeneratedStructureSerializer.Equals(obj) end

---@return number
function Packet_GeneratedStructureSerializer.GetHashCode() end


