---@meta

---@class Packet_PlayerGroupSerializer
Packet_PlayerGroupSerializer = {}

---@return Packet_PlayerGroupSerializer
function Packet_PlayerGroupSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_PlayerGroup
function Packet_PlayerGroupSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_PlayerGroup
---@return Packet_PlayerGroup
function Packet_PlayerGroupSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerGroup
---@return Packet_PlayerGroup
function Packet_PlayerGroupSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_PlayerGroup
---@return Packet_PlayerGroup
function Packet_PlayerGroupSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_PlayerGroup
function Packet_PlayerGroupSerializer.Serialize(stream, instance) end

---@param instance Packet_PlayerGroup
---@return number
function Packet_PlayerGroupSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_PlayerGroup
function Packet_PlayerGroupSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_PlayerGroupSerializer.GetType() end

---@return string
function Packet_PlayerGroupSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerGroupSerializer.Equals(obj) end

---@return number
function Packet_PlayerGroupSerializer.GetHashCode() end


