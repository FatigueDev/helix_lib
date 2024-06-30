---@meta

---@class Packet_ItemTypeSerializer
Packet_ItemTypeSerializer = {}

---@return Packet_ItemTypeSerializer
function Packet_ItemTypeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ItemType
function Packet_ItemTypeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ItemType
---@return Packet_ItemType
function Packet_ItemTypeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ItemType
---@return Packet_ItemType
function Packet_ItemTypeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ItemType
---@return Packet_ItemType
function Packet_ItemTypeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ItemType
function Packet_ItemTypeSerializer.Serialize(stream, instance) end

---@param instance Packet_ItemType
---@return number
function Packet_ItemTypeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ItemType
function Packet_ItemTypeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ItemTypeSerializer.GetType() end

---@return string
function Packet_ItemTypeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ItemTypeSerializer.Equals(obj) end

---@return number
function Packet_ItemTypeSerializer.GetHashCode() end


