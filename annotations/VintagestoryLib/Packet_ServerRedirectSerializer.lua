---@meta

---@class Packet_ServerRedirectSerializer
Packet_ServerRedirectSerializer = {}

---@return Packet_ServerRedirectSerializer
function Packet_ServerRedirectSerializer.ctor() end

---@param stream CitoMemoryStream
---@return Packet_ServerRedirect
function Packet_ServerRedirectSerializer.DeserializeLengthDelimitedNew(stream) end

---@param buffer number
---@param length number
---@param instance Packet_ServerRedirect
---@return Packet_ServerRedirect
function Packet_ServerRedirectSerializer.DeserializeBuffer(buffer, length, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerRedirect
---@return Packet_ServerRedirect
function Packet_ServerRedirectSerializer.Deserialize(stream, instance) end

---@param stream CitoMemoryStream
---@param instance Packet_ServerRedirect
---@return Packet_ServerRedirect
function Packet_ServerRedirectSerializer.DeserializeLengthDelimited(stream, instance) end

---@param stream CitoStream
---@param instance Packet_ServerRedirect
function Packet_ServerRedirectSerializer.Serialize(stream, instance) end

---@param instance Packet_ServerRedirect
---@return number
function Packet_ServerRedirectSerializer.SerializeToBytes(instance) end

---@param stream CitoStream
---@param instance Packet_ServerRedirect
function Packet_ServerRedirectSerializer.SerializeLengthDelimited(stream, instance) end

---@return userdata
function Packet_ServerRedirectSerializer.GetType() end

---@return string
function Packet_ServerRedirectSerializer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerRedirectSerializer.Equals(obj) end

---@return number
function Packet_ServerRedirectSerializer.GetHashCode() end


