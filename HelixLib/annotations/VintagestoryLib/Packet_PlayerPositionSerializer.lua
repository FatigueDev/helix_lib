---@meta

---@class Packet_PlayerPositionSerializer
Packet_PlayerPositionSerializer = {}

---@return Packet_PlayerPositionSerializer
function Packet_PlayerPositionSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_PlayerPosition
function Packet_PlayerPositionSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_PlayerPosition
---@return Packet_PlayerPosition
function Packet_PlayerPositionSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerPosition
---@return Packet_PlayerPosition
function Packet_PlayerPositionSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerPosition
---@return Packet_PlayerPosition
function Packet_PlayerPositionSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_PlayerPosition
function Packet_PlayerPositionSerializer.Serialize(stream, instance) end

---@param instance Packet_PlayerPosition
---@return number
function Packet_PlayerPositionSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_PlayerPosition
function Packet_PlayerPositionSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_PlayerPositionSerializer.GetType() end

---@return string
function Packet_PlayerPositionSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerPositionSerializer.Equals(obj) end

---@return number
function Packet_PlayerPositionSerializer.GetHashCode() end


