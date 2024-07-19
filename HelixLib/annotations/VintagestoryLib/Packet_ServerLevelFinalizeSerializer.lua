---@meta

---@class Packet_ServerLevelFinalizeSerializer
Packet_ServerLevelFinalizeSerializer = {}

---@return Packet_ServerLevelFinalizeSerializer
function Packet_ServerLevelFinalizeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerLevelFinalize
function Packet_ServerLevelFinalizeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerLevelFinalize
---@return Packet_ServerLevelFinalize
function Packet_ServerLevelFinalizeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerLevelFinalize
---@return Packet_ServerLevelFinalize
function Packet_ServerLevelFinalizeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerLevelFinalize
---@return Packet_ServerLevelFinalize
function Packet_ServerLevelFinalizeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerLevelFinalize
function Packet_ServerLevelFinalizeSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerLevelFinalize
---@return number
function Packet_ServerLevelFinalizeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerLevelFinalize
function Packet_ServerLevelFinalizeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerLevelFinalizeSerializer.GetType() end

---@return string
function Packet_ServerLevelFinalizeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerLevelFinalizeSerializer.Equals(obj) end

---@return number
function Packet_ServerLevelFinalizeSerializer.GetHashCode() end


