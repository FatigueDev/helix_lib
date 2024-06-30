---@meta

---@class Packet_GotoGroupSerializer
Packet_GotoGroupSerializer = {}

---@return Packet_GotoGroupSerializer
function Packet_GotoGroupSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_GotoGroup
function Packet_GotoGroupSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_GotoGroup
---@return Packet_GotoGroup
function Packet_GotoGroupSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_GotoGroup
---@return Packet_GotoGroup
function Packet_GotoGroupSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_GotoGroup
---@return Packet_GotoGroup
function Packet_GotoGroupSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_GotoGroup
function Packet_GotoGroupSerializer.Serialize(stream, instance) end

---@param instance Packet_GotoGroup
---@return number
function Packet_GotoGroupSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_GotoGroup
function Packet_GotoGroupSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_GotoGroupSerializer.GetType() end

---@return string
function Packet_GotoGroupSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_GotoGroupSerializer.Equals(obj) end

---@return number
function Packet_GotoGroupSerializer.GetHashCode() end


