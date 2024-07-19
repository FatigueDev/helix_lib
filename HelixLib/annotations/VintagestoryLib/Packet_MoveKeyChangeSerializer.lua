---@meta

---@class Packet_MoveKeyChangeSerializer
Packet_MoveKeyChangeSerializer = {}

---@return Packet_MoveKeyChangeSerializer
function Packet_MoveKeyChangeSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_MoveKeyChange
function Packet_MoveKeyChangeSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_MoveKeyChange
---@return Packet_MoveKeyChange
function Packet_MoveKeyChangeSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_MoveKeyChange
---@return Packet_MoveKeyChange
function Packet_MoveKeyChangeSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_MoveKeyChange
---@return Packet_MoveKeyChange
function Packet_MoveKeyChangeSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_MoveKeyChange
function Packet_MoveKeyChangeSerializer.Serialize(stream, instance) end

---@param instance Packet_MoveKeyChange
---@return number
function Packet_MoveKeyChangeSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_MoveKeyChange
function Packet_MoveKeyChangeSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_MoveKeyChangeSerializer.GetType() end

---@return string
function Packet_MoveKeyChangeSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_MoveKeyChangeSerializer.Equals(obj) end

---@return number
function Packet_MoveKeyChangeSerializer.GetHashCode() end


