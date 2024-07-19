---@meta

---@class Packet_EntityDespawnSerializer
Packet_EntityDespawnSerializer = {}

---@return Packet_EntityDespawnSerializer
function Packet_EntityDespawnSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntityDespawn
function Packet_EntityDespawnSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntityDespawn
---@return Packet_EntityDespawn
function Packet_EntityDespawnSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityDespawn
---@return Packet_EntityDespawn
function Packet_EntityDespawnSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntityDespawn
---@return Packet_EntityDespawn
function Packet_EntityDespawnSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntityDespawn
function Packet_EntityDespawnSerializer.Serialize(stream, instance) end

---@param instance Packet_EntityDespawn
---@return number
function Packet_EntityDespawnSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntityDespawn
function Packet_EntityDespawnSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntityDespawnSerializer.GetType() end

---@return string
function Packet_EntityDespawnSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityDespawnSerializer.Equals(obj) end

---@return number
function Packet_EntityDespawnSerializer.GetHashCode() end


