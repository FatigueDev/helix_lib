---@meta

---@class Packet_ServerSoundSerializer
Packet_ServerSoundSerializer = {}

---@return Packet_ServerSoundSerializer
function Packet_ServerSoundSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerSound
function Packet_ServerSoundSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerSound
---@return Packet_ServerSound
function Packet_ServerSoundSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerSound
---@return Packet_ServerSound
function Packet_ServerSoundSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerSound
---@return Packet_ServerSound
function Packet_ServerSoundSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerSound
function Packet_ServerSoundSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerSound
---@return number
function Packet_ServerSoundSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerSound
function Packet_ServerSoundSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerSoundSerializer.GetType() end

---@return string
function Packet_ServerSoundSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerSoundSerializer.Equals(obj) end

---@return number
function Packet_ServerSoundSerializer.GetHashCode() end


