---@meta

---@class Packet_WorldMetaDataSerializer
Packet_WorldMetaDataSerializer = {}

---@return Packet_WorldMetaDataSerializer
function Packet_WorldMetaDataSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_WorldMetaData
function Packet_WorldMetaDataSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_WorldMetaData
---@return Packet_WorldMetaData
function Packet_WorldMetaDataSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_WorldMetaData
---@return Packet_WorldMetaData
function Packet_WorldMetaDataSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_WorldMetaData
---@return Packet_WorldMetaData
function Packet_WorldMetaDataSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_WorldMetaData
function Packet_WorldMetaDataSerializer.Serialize(stream, instance) end

---@param instance Packet_WorldMetaData
---@return number
function Packet_WorldMetaDataSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_WorldMetaData
function Packet_WorldMetaDataSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_WorldMetaDataSerializer.GetType() end

---@return string
function Packet_WorldMetaDataSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_WorldMetaDataSerializer.Equals(obj) end

---@return number
function Packet_WorldMetaDataSerializer.GetHashCode() end


