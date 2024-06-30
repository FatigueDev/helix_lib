---@meta

---@class Packet_ServerPlayerPingSerializer
Packet_ServerPlayerPingSerializer = {}

---@return Packet_ServerPlayerPingSerializer
function Packet_ServerPlayerPingSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerPlayerPing
function Packet_ServerPlayerPingSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerPlayerPing
---@return Packet_ServerPlayerPing
function Packet_ServerPlayerPingSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerPlayerPing
---@return Packet_ServerPlayerPing
function Packet_ServerPlayerPingSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerPlayerPing
---@return Packet_ServerPlayerPing
function Packet_ServerPlayerPingSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerPlayerPing
function Packet_ServerPlayerPingSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerPlayerPing
---@return number
function Packet_ServerPlayerPingSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerPlayerPing
function Packet_ServerPlayerPingSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerPlayerPingSerializer.GetType() end

---@return string
function Packet_ServerPlayerPingSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerPlayerPingSerializer.Equals(obj) end

---@return number
function Packet_ServerPlayerPingSerializer.GetHashCode() end


