---@meta

---@class Packet_EntitySpawnSerializer
Packet_EntitySpawnSerializer = {}

---@return Packet_EntitySpawnSerializer
function Packet_EntitySpawnSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_EntitySpawn
function Packet_EntitySpawnSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_EntitySpawn
---@return Packet_EntitySpawn
function Packet_EntitySpawnSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntitySpawn
---@return Packet_EntitySpawn
function Packet_EntitySpawnSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_EntitySpawn
---@return Packet_EntitySpawn
function Packet_EntitySpawnSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_EntitySpawn
function Packet_EntitySpawnSerializer.Serialize(stream, instance) end

---@param instance Packet_EntitySpawn
---@return number
function Packet_EntitySpawnSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_EntitySpawn
function Packet_EntitySpawnSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_EntitySpawnSerializer.GetType() end

---@return string
function Packet_EntitySpawnSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntitySpawnSerializer.Equals(obj) end

---@return number
function Packet_EntitySpawnSerializer.GetHashCode() end


