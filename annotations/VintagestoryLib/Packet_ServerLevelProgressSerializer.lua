---@meta

---@class Packet_ServerLevelProgressSerializer
Packet_ServerLevelProgressSerializer = {}

---@return Packet_ServerLevelProgressSerializer
function Packet_ServerLevelProgressSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerLevelProgress
function Packet_ServerLevelProgressSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerLevelProgress
---@return Packet_ServerLevelProgress
function Packet_ServerLevelProgressSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerLevelProgress
---@return Packet_ServerLevelProgress
function Packet_ServerLevelProgressSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerLevelProgress
---@return Packet_ServerLevelProgress
function Packet_ServerLevelProgressSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerLevelProgress
function Packet_ServerLevelProgressSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerLevelProgress
---@return number
function Packet_ServerLevelProgressSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerLevelProgress
function Packet_ServerLevelProgressSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerLevelProgressSerializer.GetType() end

---@return string
function Packet_ServerLevelProgressSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerLevelProgressSerializer.Equals(obj) end

---@return number
function Packet_ServerLevelProgressSerializer.GetHashCode() end


