---@meta

---@class Packet_BlockDamageSerializer
Packet_BlockDamageSerializer = {}

---@return Packet_BlockDamageSerializer
function Packet_BlockDamageSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_BlockDamage
function Packet_BlockDamageSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_BlockDamage
---@return Packet_BlockDamage
function Packet_BlockDamageSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockDamage
---@return Packet_BlockDamage
function Packet_BlockDamageSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_BlockDamage
---@return Packet_BlockDamage
function Packet_BlockDamageSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_BlockDamage
function Packet_BlockDamageSerializer.Serialize(stream, instance) end

---@param instance Packet_BlockDamage
---@return number
function Packet_BlockDamageSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_BlockDamage
function Packet_BlockDamageSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_BlockDamageSerializer.GetType() end

---@return string
function Packet_BlockDamageSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockDamageSerializer.Equals(obj) end

---@return number
function Packet_BlockDamageSerializer.GetHashCode() end


