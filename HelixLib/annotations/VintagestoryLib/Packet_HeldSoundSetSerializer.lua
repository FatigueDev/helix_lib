---@meta

---@class Packet_HeldSoundSetSerializer
Packet_HeldSoundSetSerializer = {}

---@return Packet_HeldSoundSetSerializer
function Packet_HeldSoundSetSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_HeldSoundSet
function Packet_HeldSoundSetSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_HeldSoundSet
---@return Packet_HeldSoundSet
function Packet_HeldSoundSetSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_HeldSoundSet
---@return Packet_HeldSoundSet
function Packet_HeldSoundSetSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_HeldSoundSet
---@return Packet_HeldSoundSet
function Packet_HeldSoundSetSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_HeldSoundSet
function Packet_HeldSoundSetSerializer.Serialize(stream, instance) end

---@param instance Packet_HeldSoundSet
---@return number
function Packet_HeldSoundSetSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_HeldSoundSet
function Packet_HeldSoundSetSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_HeldSoundSetSerializer.GetType() end

---@return string
function Packet_HeldSoundSetSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_HeldSoundSetSerializer.Equals(obj) end

---@return number
function Packet_HeldSoundSetSerializer.GetHashCode() end


