---@meta

---@class Packet_PlayerDeathSerializer
Packet_PlayerDeathSerializer = {}

---@return Packet_PlayerDeathSerializer
function Packet_PlayerDeathSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_PlayerDeath
function Packet_PlayerDeathSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_PlayerDeath
---@return Packet_PlayerDeath
function Packet_PlayerDeathSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerDeath
---@return Packet_PlayerDeath
function Packet_PlayerDeathSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerDeath
---@return Packet_PlayerDeath
function Packet_PlayerDeathSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_PlayerDeath
function Packet_PlayerDeathSerializer.Serialize(stream, instance) end

---@param instance Packet_PlayerDeath
---@return number
function Packet_PlayerDeathSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_PlayerDeath
function Packet_PlayerDeathSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_PlayerDeathSerializer.GetType() end

---@return string
function Packet_PlayerDeathSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerDeathSerializer.Equals(obj) end

---@return number
function Packet_PlayerDeathSerializer.GetHashCode() end


