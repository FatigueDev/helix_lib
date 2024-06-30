---@meta

---@class Packet_NetworkChannelsSerializer
Packet_NetworkChannelsSerializer = {}

---@return Packet_NetworkChannelsSerializer
function Packet_NetworkChannelsSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_NetworkChannels
function Packet_NetworkChannelsSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_NetworkChannels
---@return Packet_NetworkChannels
function Packet_NetworkChannelsSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_NetworkChannels
---@return Packet_NetworkChannels
function Packet_NetworkChannelsSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_NetworkChannels
---@return Packet_NetworkChannels
function Packet_NetworkChannelsSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_NetworkChannels
function Packet_NetworkChannelsSerializer.Serialize(stream, instance) end

---@param instance Packet_NetworkChannels
---@return number
function Packet_NetworkChannelsSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_NetworkChannels
function Packet_NetworkChannelsSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_NetworkChannelsSerializer.GetType() end

---@return string
function Packet_NetworkChannelsSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_NetworkChannelsSerializer.Equals(obj) end

---@return number
function Packet_NetworkChannelsSerializer.GetHashCode() end


