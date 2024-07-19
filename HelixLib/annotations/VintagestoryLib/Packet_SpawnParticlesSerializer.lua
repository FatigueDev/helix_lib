---@meta

---@class Packet_SpawnParticlesSerializer
Packet_SpawnParticlesSerializer = {}

---@return Packet_SpawnParticlesSerializer
function Packet_SpawnParticlesSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_SpawnParticles
function Packet_SpawnParticlesSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_SpawnParticles
---@return Packet_SpawnParticles
function Packet_SpawnParticlesSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_SpawnParticles
---@return Packet_SpawnParticles
function Packet_SpawnParticlesSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_SpawnParticles
---@return Packet_SpawnParticles
function Packet_SpawnParticlesSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_SpawnParticles
function Packet_SpawnParticlesSerializer.Serialize(stream, instance) end

---@param instance Packet_SpawnParticles
---@return number
function Packet_SpawnParticlesSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_SpawnParticles
function Packet_SpawnParticlesSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_SpawnParticlesSerializer.GetType() end

---@return string
function Packet_SpawnParticlesSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_SpawnParticlesSerializer.Equals(obj) end

---@return number
function Packet_SpawnParticlesSerializer.GetHashCode() end


