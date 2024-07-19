---@meta

---@class Packet_BlockSoundSetSerializer
Packet_BlockSoundSetSerializer = {}

---@return Packet_BlockSoundSetSerializer
function Packet_BlockSoundSetSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BlockSoundSet
function Packet_BlockSoundSetSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BlockSoundSet
---@return Packet_BlockSoundSet
function Packet_BlockSoundSetSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockSoundSet
---@return Packet_BlockSoundSet
function Packet_BlockSoundSetSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockSoundSet
---@return Packet_BlockSoundSet
function Packet_BlockSoundSetSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BlockSoundSet
function Packet_BlockSoundSetSerializer.Serialize(stream, instance) end

---@param instance Packet_BlockSoundSet
---@return number
function Packet_BlockSoundSetSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BlockSoundSet
function Packet_BlockSoundSetSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BlockSoundSetSerializer.GetType() end

---@return string
function Packet_BlockSoundSetSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockSoundSetSerializer.Equals(obj) end

---@return number
function Packet_BlockSoundSetSerializer.GetHashCode() end


