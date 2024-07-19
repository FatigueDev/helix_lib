---@meta

---@class Packet_ModIdSerializer
Packet_ModIdSerializer = {}

---@return Packet_ModIdSerializer
function Packet_ModIdSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ModId
function Packet_ModIdSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ModId
---@return Packet_ModId
function Packet_ModIdSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ModId
---@return Packet_ModId
function Packet_ModIdSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ModId
---@return Packet_ModId
function Packet_ModIdSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ModId
function Packet_ModIdSerializer.Serialize(stream, instance) end

---@param instance Packet_ModId
---@return number
function Packet_ModIdSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ModId
function Packet_ModIdSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ModIdSerializer.GetType() end

---@return string
function Packet_ModIdSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ModIdSerializer.Equals(obj) end

---@return number
function Packet_ModIdSerializer.GetHashCode() end


