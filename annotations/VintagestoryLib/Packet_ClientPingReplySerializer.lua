---@meta

---@class Packet_ClientPingReplySerializer
Packet_ClientPingReplySerializer = {}

---@return Packet_ClientPingReplySerializer
function Packet_ClientPingReplySerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ClientPingReply
function Packet_ClientPingReplySerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ClientPingReply
---@return Packet_ClientPingReply
function Packet_ClientPingReplySerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientPingReply
---@return Packet_ClientPingReply
function Packet_ClientPingReplySerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ClientPingReply
---@return Packet_ClientPingReply
function Packet_ClientPingReplySerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ClientPingReply
function Packet_ClientPingReplySerializer.Serialize(stream, instance) end

---@param instance Packet_ClientPingReply
---@return number
function Packet_ClientPingReplySerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ClientPingReply
function Packet_ClientPingReplySerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ClientPingReplySerializer.GetType() end

---@return string
function Packet_ClientPingReplySerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientPingReplySerializer.Equals(obj) end

---@return number
function Packet_ClientPingReplySerializer.GetHashCode() end


