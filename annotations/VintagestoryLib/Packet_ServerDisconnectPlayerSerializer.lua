---@meta

---@class Packet_ServerDisconnectPlayerSerializer
Packet_ServerDisconnectPlayerSerializer = {}

---@return Packet_ServerDisconnectPlayerSerializer
function Packet_ServerDisconnectPlayerSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerDisconnectPlayer
function Packet_ServerDisconnectPlayerSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerDisconnectPlayer
---@return Packet_ServerDisconnectPlayer
function Packet_ServerDisconnectPlayerSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerDisconnectPlayer
---@return Packet_ServerDisconnectPlayer
function Packet_ServerDisconnectPlayerSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerDisconnectPlayer
---@return Packet_ServerDisconnectPlayer
function Packet_ServerDisconnectPlayerSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerDisconnectPlayer
function Packet_ServerDisconnectPlayerSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerDisconnectPlayer
---@return number
function Packet_ServerDisconnectPlayerSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerDisconnectPlayer
function Packet_ServerDisconnectPlayerSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerDisconnectPlayerSerializer.GetType() end

---@return string
function Packet_ServerDisconnectPlayerSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerDisconnectPlayerSerializer.Equals(obj) end

---@return number
function Packet_ServerDisconnectPlayerSerializer.GetHashCode() end


