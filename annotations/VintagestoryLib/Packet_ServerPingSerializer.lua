---@meta

---@class Packet_ServerPingSerializer
Packet_ServerPingSerializer = {}

---@return Packet_ServerPingSerializer
function Packet_ServerPingSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerPing
function Packet_ServerPingSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerPing
---@return Packet_ServerPing
function Packet_ServerPingSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerPing
---@return Packet_ServerPing
function Packet_ServerPingSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerPing
---@return Packet_ServerPing
function Packet_ServerPingSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerPing
function Packet_ServerPingSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerPing
---@return number
function Packet_ServerPingSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerPing
function Packet_ServerPingSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerPingSerializer.GetType() end

---@return string
function Packet_ServerPingSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerPingSerializer.Equals(obj) end

---@return number
function Packet_ServerPingSerializer.GetHashCode() end


